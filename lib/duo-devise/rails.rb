module DuoDevise
	class Engine < ::Rails::Engine
		ActiveSupport.on_load(:action_controller) do
			include DuoDevise::Controllers::Helpers
		end

		ActiveSupport.on_load(:action_view) do
			include DuoDevise::Views::Helpers
		end

		config.after_initalize do
			Devise::Mapping.send :include, DuoDevise::Mapping
		end
	end
end