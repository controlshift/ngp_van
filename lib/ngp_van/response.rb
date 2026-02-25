# frozen_string_literal: true

module NgpVan
  module Response
    # The Faraday :json response middleware parses JSON responses automatically.
    # but The VAN API does not always return JSON. For example, when creating a new
    # code, you post to /codes. The return is the integer ID of the newly
    # created code, not a json representation of it.
    # Non-JSON responses (e.g. plain integer IDs from POST /codes) pass through as-is.
    def self.create(body)
      body
    end
  end
end
