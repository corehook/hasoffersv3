require 'spec_helper'

describe HasOffersV3 do

  context 'singleton' do
    it 'should use default config' do
      subject = HasOffersV3::Offer.client.configuration
      expect(subject).to eq(HasOffersV3.configuration)
    end
  end

  describe '#configuration' do
    it 'should create different connections' do
      subject = HasOffersV3.new
      expect(subject.configuration).to_not eq(HasOffersV3.configuration)
    end

    it 'should use params instead of default' do
      subject = HasOffersV3.new(host: 'example.com')
      expect(subject.configuration.host).to eq('example.com')
      expect(subject.configuration.host).to_not eq(HasOffersV3::Configuration::DEFAULTS[:host])
    end
  end

  context 'api' do
    subject { HasOffersV3.new }

    describe '#offers' do
      it 'should get offers for current connection' do
        offer = double('HasOffersV3::Offer')
        expect(HasOffersV3::Offer).to receive(:new).and_return(offer)
        expect(offer).to receive(:find_all)
        subject.offers.find_all
      end
    end
  end
end

