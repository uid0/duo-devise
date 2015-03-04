require 'duo-devise/hooks/duo_authenticatable'
module Devise
  module Models
    module DuoAuthenticatable
      extend ActiveSupport::Concern

      def with_duo_authentication?(request)
        if self.duo_id.present? && self.duo_enabled
          return true
        end

        return false
      end

      module ClassMethods
        def find_by_duo_id(duo_id)
          find(:first, :conditions => {:authy_id => duo_id})
        end

        Devise::Models.config(self, :duo_remember_device)
      end
    end
  end
end
