class HasOffersV3
  class AdvertiserUser < Base
    def find_all(params = {})
      post_request 'findAll', params
    end
  end
end
