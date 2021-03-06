require "rails_admin_localized_wysihtml5/engine"

module RailsAdminLocalizedWysihtml5
end

require 'rails_admin/config/fields/types/wysihtml5'

module RailsAdmin
  module Config
    module Fields
      module Types
        
        class Stringml < RailsAdmin::Config::Fields::Types::String

          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option :allowed_methods do
            [method_name, name.to_s + '_translations']
          end

          register_instance_option :partial do
            :form_fieldml
          end

        end
        
        class LocalizedWysihtml5 < RailsAdmin::Config::Fields::Types::Wysihtml5
          
          RailsAdmin::Config::Fields::Types::register(self)
          
          register_instance_option :allowed_methods do
            [method_name, name.to_s + '_translations']
          end

          register_instance_option :partial do
            :form_localized_wysihtml5
          end
          
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|

  if properties[:name] == :localized_wysihtml5
    fields << RailsAdmin::Config::Fields::Types::Textml.new(parent, properties[:name], properties)
    true
  else
    false
  end

  if properties[:name] == :stringml
    fields << RailsAdmin::Config::Fields::Types::Stringml.new(parent, properties[:name], properties)
    true
  else
    false
  end
end