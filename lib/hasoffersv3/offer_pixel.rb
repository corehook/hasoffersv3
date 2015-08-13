class HasOffersV3
  class OfferPixel < Base
    class << self
      def find_all(params = {})
        post_request 'findAll', params
      end

      def find_all_by_ids(params = {})
        requires! params, [:ids]
        post_request 'findAllByIds', params
      end

      def find_by_id(params = {})
        requires! params, [:id]
        post_request 'findById', params
      end

      def get_allowed_types(params = {})
        requires! params, [:offer_id]
        post_request 'getAllowedTypes', params
      end

    end
  end
end
