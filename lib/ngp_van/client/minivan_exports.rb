# frozen_string_literal: true

module NgpVan
  class Client
    module MinivanExports
      def minivan_exports(params: {})
        get(path: 'minivanExports', params: params)
      end

      def minivan_export(id:, params: {})
        get(path: "minivanExports/#{esc(id)}", params: params)
      end
    end
  end
end
