# frozen_string_literal: true

module NgpVan
  class Client
    module Users
      def user_district_field_values(id:, params: {})
        get(path: "users/#{esc(id)}/districtFieldValues", params: params)
      end

      def create_user_district_field_values(id:, body: {})
        post(path: "users/#{esc(id)}/districtFieldValues", body: body)
      end

      def update_user_district_field_values(id:, body: {})
        put(path: "users/#{esc(id)}/districtFieldValues", body: body)
      end
    end
  end
end
