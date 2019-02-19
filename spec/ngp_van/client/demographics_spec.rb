# frozen_string_literal: true

require 'spec_helper'

module NgpVan
  # rubocop:disable Metrics/ClassLength
  class Client
    RSpec.describe Demographics do
      let(:client) { NgpVan::Client.new }

      describe '#reported_races' do
        let(:params) do
          {
            '$top' => 2
          }
        end

        let(:response) { fixture('reported_races.json') }
        let(:url) { build_url(client: client, path: 'reportedRaces') }

        before do
          stub_request(:get, url)
            .with(query: params)
            .to_return(
              body: response
            )
        end

        it 'requests the correct resource' do
          client.reported_races(params: params)
          expect(
            a_request(:get, url)
              .with(query: params)
          ).to have_been_made
        end

        it 'returns an array of items' do
          reported_races = client.reported_races(params: params)
          expect(reported_races['items']).to be_a(Array)
        end

        it 'returns the requested data' do
          reported_races = client.reported_races(params: params)
          expect(reported_races['items'].first['reportedRaceId']).to eq(2)
        end
      end

      describe '#reported_ethnicities' do
        let(:params) do
          {
            '$top' => 2
          }
        end

        let(:response) { fixture('reported_ethnicities.json') }
        let(:url) { build_url(client: client, path: 'reportedEthnicities') }

        before do
          stub_request(:get, url)
            .with(query: params)
            .to_return(
              body: response
            )
        end

        it 'requests the correct resource' do
          client.reported_ethnicities(params: params)
          expect(
            a_request(:get, url)
              .with(query: params)
          ).to have_been_made
        end

        it 'returns an array of items' do
          reported_ethnicities = client.reported_ethnicities(params: params)
          expect(reported_ethnicities['items']).to be_a(Array)
        end

        it 'returns the requested data' do
          reported_ethnicities = client.reported_ethnicities(params: params)
          expect(reported_ethnicities['items'].first['reportedEthnicityId']).to eq(2)
        end
      end

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

        it 'returns the requested data' do
          languages = client.reported_language_preferences(params: params)
          expect(languages['items'].first['reportedLanguagePreferenceId']).to eq(2)
        end
      end
    end
  end
end
