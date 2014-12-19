class HasOffersV3
  class AffiliateOffer < Base
    class << self

      def target
        'Affiliate_Offer'
      end

      def find_all(params = {})
        post_request 'findAll', params
      end

      def find_by_id(params = {})
        requires! params, [:id]
        post_request 'findById', params
      end

      def get_categories(params = {})
        requires! params, [:ids]
        post_request 'getCategories', params
      end

      def get_target_countries(params = {})
        requires! params, [:ids]
        post_request 'getTargetCountries', params
      end

      def generate_tracking_link(params = {})
        requires! params, [:offer_id]
        post_request 'generateTrackingLink', params
      end

      def find_my_offers(params = {})
        post_request 'findMyOffers', params
      end

    end
  end
end
