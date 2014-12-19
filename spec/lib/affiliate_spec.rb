require 'spec_helper'

describe HasOffersV3::Affiliate do
  subject { HasOffersV3::Affiliate }

  let(:url)  { api_url 'Affiliate' }

  before(:each) do |example|
    stub_call unless example.metadata[:no_stub]
  end

  describe '.find_all' do
    it 'should make a proper request call' do
      response = subject.find_all
      expect(a_request(:post, url).with(body: hash_including({'Method' => 'findAll'}))).to have_been_made
      validate_call response
    end
  end

  describe '.find_by_id', :no_stub do
    it 'should make a proper request call' do
      stub_call :get, nil, Regexp.new(url)
      response = subject.find_by_id id: 1
      expect(a_request(:get, url).with(query: hash_including({'Method' => 'findById', 'id' => '1'}))).to have_been_made
      validate_call response
    end

    context 'when there is no id' do
      it 'should raise exception' do
        expect { subject.find_by_id failed_id: 1 }.to raise_error ArgumentError
      end
    end
  end

  describe '.update_payment_method_wire' do
    it 'should make a proper request call' do
      response = subject.update_payment_method_wire
      expect(a_request(:post, url).with(body: hash_including({'Method' => 'updatePaymentMethodWire'}))).to have_been_made
      validate_call response
    end
  end

  describe '.update_payment_method_paypal' do
    it 'should make a proper request call' do
      response = subject.update_payment_method_paypal
      expect(a_request(:post, url).with(body: hash_including({'Method' => 'updatePaymentMethodPaypal'}))).to have_been_made
      validate_call response
    end
  end
end
