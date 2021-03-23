# frozen_string_literal: true

require 'spec_helper'

module NgpVan
  class Client
    RSpec.describe Phones do
      let(:client) { NgpVan::Client.new }

      describe '#is_cell_statuses' do
        let(:response) { fixture('phones.json') }
        let(:url) { build_url(client: client, path: 'phones/isCellStatuses') }

        before do
          stub_request(:get, url)
            .to_return(
              body: response
            )
        end

        it 'requests the correct resource' do
          client.is_cell_statuses
          expect(a_request(:get, url)).to have_been_made
        end
      end
    end
  end
end
