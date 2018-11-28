# frozen_string_literal: true

module NgpVan
  class Client
    module Signups
      def signup_statuses(params: {})
        get(path: 'signups/statuses', params: params)
      end

      def signup(id:, params: {})
        get(path: "signups/#{esc(id)}", params: params)
      end

      def signups(params: {})
        get(path: 'signups', params: params)
      end

      def create_signup(body: {})
        post(path: 'signups', body: body)
      end

      def update_signup(id:, body: {})
        put(path: "signups/#{esc(id)}", body: body)
      end

      def delete_signup(id:)
        delete(path: "signups/#{esc(id)}")
      end
    end
  end
end
