require 'active_support/concern'
require 'active_support/core_ext/integer/time'
require 'devise'
require 'openssl'
require 'base64'

module DuoDevise
  autoload :Mapping, 'duo-devise/mapping'

  module Controllers
    autoload :Passwords, 'duo-devise/controllers/passwords'
    autoload :Helpers, 'duo-devise/controllers/helpers'
  end

  module Views
    autoload :Helpers, 'duo-devise/controllers/view_helpers'
  end
end

require 'duo-devise/routes'
require 'duo-devise/rails'
require 'duo-devise/modules/duo_authenticatable'

Devise.add_module :duo_authenticatable, :model => 'duo-devise/models/duo_authenticatable', :contrlller => :duo_devise, :route => :duo 
