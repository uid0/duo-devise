module ActionDispatch::Routing
  class Mapper
    protected

    def duo_devise(mapping, controllers)
      match "/verify_response", :controller => controllers[:duo_devise], :action => :verify_response, :as => :verify_response, :via => :post
    end
  end
end
