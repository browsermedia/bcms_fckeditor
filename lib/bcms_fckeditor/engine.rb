require 'browsercms'

module BcmsFckeditor
  class Engine < Rails::Engine
    include Cms::Module
    
    initializer "extend section_controller" do 
      require 'bcms_fckeditor/section_controller_extensions'
    end
  end
end