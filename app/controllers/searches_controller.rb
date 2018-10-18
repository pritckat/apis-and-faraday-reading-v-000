class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = "UOAAK4VTI34DAG2SKIIHS1FQ1JHHVZLLUSWPQEGA5VLOHX5F"
      req.params['client_secret'] = "P2ME2NRS1JZABVJCPZD20ZLVVWXMDFFTF2FPCREK5ATYQRMN"
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
