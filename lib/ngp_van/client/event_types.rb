# frozen_string_literal: true

module NgpVan
  class Client
    module EventTypes
      def event_types(params: {})
        get(path: 'events/types', params: params)
      end

      def event_type(id:, params: {})
        get(path: "events/types/#{esc(id)}", params: params)
      end
    end
  end
end
