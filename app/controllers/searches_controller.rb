class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     req.params['client_id'] = HT3G4KSBLELSNJVBAT05D0ZR5IE11GOZ1HNFXJ1CM2I34SRY
     req.params['client_secret'] = 1F5XNMLEO4CSSNGSOYFDYILNZGQIJLKG415AU4W4IXWEZ4TL
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   render 'search'
  end
end
end
