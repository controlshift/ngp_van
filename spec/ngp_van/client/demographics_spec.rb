# frozen_string_literal: true

require 'spec_helper'

module NgpVan
  # rubocop:disable Metrics/ClassLength
  class Client
    RSpec.describe Demographics do
      let(:client) { NgpVan::Client.new }

      describe '#reported_language_preferences' do
        let(:params) do
          {
            '$top' => 2
          }
        end

        let(:response) { fixture('reported_language_preferences.json') }
        let(:url) { build_url(client: client, path: 'reportedLanguagePreferences') }

        before do
          stub_request(:get, url)
            .with(query: params)
            .to_return(
              body: response
            )
        end

        it 'requests the correct resource' do
          client.reported_language_preferences(params: params)
          expect(
            a_request(:get, url)
              .with(query: params)
          ).to have_been_made
        end

        it 'returns an array of items' do
          languages = client.reported_language_preferences(params: params)
          expect(languages['items']).to be_a(Array)
        end

        it 'returns the requested language preferences' do
          languages = client.reported_language_preferences(params: params)
          expect(languages['items'].first['reportedLanguagePreferenceId']).to eq(2)
        end
      end
    end
  end
end
