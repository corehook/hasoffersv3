class HasOffersV3
  class Offer < Base
    def find_all(params = {})
      post_request 'findAll', params
    end

    def find_all_by_ids(params = {})
      requires! params, [:ids]
      post_request 'findAllByIds', params
    end

    def find_all_ids_by_advertiser_id(params = {})
      requires! params, [:advertiser_id]
      post_request 'findAllIdsByAdvertiserId', params
    end

    def find_all_ids_by_affiliate_id(params = {})
      requires! params, [:affiliate_id]
      post_request 'findAllIdsByAffiliateId', params
    end

    def find_by_id(params = {})
      requires! params, [:id]
      post_request 'findById', params
    end

    def get_groups(params = {})
      requires! params, [:id]
      post_request 'getGroups', params
    end

    def get_approved_affiliate_ids(params = {}, &block)
      requires! params, [:id]
      post_request 'getApprovedAffiliateIds', params, &block
    end

    def set_payout(params = {})
      requires! params, [:id, :affiliate_id]
      post_request 'setPayout', params
    end

    def remove_payout(params = {})
      requires! params, [:id, :affiliate_id]
      post_request 'removePayout', params
    end

    def generate_tracking_link(params = {})
      requires! params, [:offer_id, :affiliate_id]
      post_request 'generateTrackingLink', params
    end

    def get_tier_payouts(params = {})
      requires! params, [:id]
      post_request 'getTierPayouts', params
    end
  end
end
