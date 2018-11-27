# frozen_string_literal: true

module NgpVan
  class Client
    module Events
      def create_event(body: {})
        post(path: 'events', body: body)
      end

      def create_event_shift(id:, body: {})
        post(path: "events/#{esc(id)}/shifts", body: body)
      end

      def event(id:, params: {})
        get(path: "events/#{esc(id)}", params: params)
      end

      def events(params: {})
        get(path: 'events', params: params)
      end

      def update_event(id:, body: {})
        put(path: "events/#{esc(id)}", body: body)
      end

      def delete_event(id:)
        delete(path: "events/#{esc(id)}")
      end
    end
  end
end
