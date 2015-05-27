require 'spec_helper'

describe HasOffersV3::Application do
  let(:url)  { Regexp.new api_url('Application') }
  
  describe '.get_payout_tiers' do
    subject { HasOffersV3::Application }
    it 'should make a proper request call' do
      stub_call :get
      response = subject.get_payout_tiers
      expect(a_request(:get, url).with(query: hash_including({'Method' => 'findAllAffiliateTiers'}))).to have_been_made
      validate_call response
    end
  end
end
