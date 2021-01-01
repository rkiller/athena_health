require 'json'

module AthenaHealth
  class Connection
    
    def initialize(version:, key:, secret:, token: nil, base_url:)
      @version = version
      @key = key
      @secret = secret
      @token = token
      @auth_url = "https://api.#{@version}.platform.athenahealth.com/oauth2/v1/token"
      @base_url = base_url || "https://api.#{@version}.athenahealth.com/v1"
    end

    def authenticate
      response = Typhoeus.post(
        @auth_url,
        userpwd: "#{@key}:#{@secret}",
        body: { 
        	grant_type: 'client_credentials',
        	scope: 'athena/service/Athenanet.MDP.*' 
        }
      ).response_body

      @token = JSON.parse(response)['access_token']
    end

    def call(endpoint:, method:, params: {}, headers: {}, body: {}, second_call: false, raw: false)
      authenticate if @token.nil?

      headers.merge!({ "Authorization": "Bearer #{@token}"})

      response = Typhoeus::Request.new(
        "#{@base_url}/#{endpoint}",
        method: method,
        headers: headers,
        params: params,
        body: body
      ).run

      if response.response_code == 401 && !second_call
        authenticate
        return call(endpoint: endpoint, method: method, second_call: true, body: body, params: params)
      end

      if response.response_code == 403 && !second_call
        return call(endpoint: endpoint, method: method, second_call: true, body: body, params: params)
      end

      body = response.response_body

      if [400, 409].include? response.response_code
        fail AthenaHealth::ValidationError.new(json_response(body))
      end

      if response.response_code != 200
        AthenaHealth::Error.new(code: response.response_code).render
      end

      raw ? body : json_response(body)
    end

    private

    def json_response(body)
      JSON.parse(body)
    end
  end
end
