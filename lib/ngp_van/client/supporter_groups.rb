# frozen_string_literal: true

module NgpVan
  class Client
    module SupporterGroups
      def create_supporter_group(body: {})
        post(path: 'supporterGroups', body: body)
      end

      def supporter_group(id:, params: {})
        get(path: "supporterGroups/#{id}", params: params)
      end

      def supporter_groups(params: {})
        get(path: 'supporterGroups', params: params)
      end
    end
  end
end
