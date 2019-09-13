class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'P1QQHA0V5LSSKZDINKTIHPREO0X1OHW0GJBYENZPNXBKGTYJ'
      req.params['client_secret'] = 'HKEQYI2Q23S32QWLALESP5PQ4K1ANUJFFPX05LYMIO2ZPGID'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
