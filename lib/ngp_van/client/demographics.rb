# frozen_string_literal: true

module NgpVan
  class Client
    module Demographics
      def reported_language_preferences(params: {})
        get(path: 'reportedLanguagePreferences', params: params)
      end
    end
  end
end
