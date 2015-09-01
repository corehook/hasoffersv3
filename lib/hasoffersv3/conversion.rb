class HasOffersV3
  class Conversion < Base
    def find_all(params = {})
      get_request 'findAll', params
    end

    def find_added_conversions(params = {})
      get_request 'findAddedConversions', params
    end

    def find_updated_conversions(params = {})
      get_request 'findUpdatedConversions', params
    end
  end
end
