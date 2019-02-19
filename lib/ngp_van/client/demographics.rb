# frozen_string_literal: true

module NgpVan
  class Client
    module Demographics
      def reported_races(params: {})
        get(path: 'reportedRaces', params: params)
      end

      def reported_ethnicities(params: {})
        get(path: 'reportedEthnicities', params: params)
      end

      def reported_language_preferences(params: {})
        get(path: 'reportedLanguagePreferences', params: params)
      end
    end
  end
end
