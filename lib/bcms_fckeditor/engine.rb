require 'browsercms'

module BcmsFckeditor
  class Engine < Rails::Engine
    include Cms::Module
    
    config.to_prepare do
      Cms.content_editor = "fckeditor"
    end
        
    initializer "bcms_fckeditor", :after=>'disable_dependency_loading' do 
      require 'bcms_fckeditor/section_controller_extensions'      
    end

  end
end