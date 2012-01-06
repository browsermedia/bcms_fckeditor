require 'browsercms'
module BcmsFckeditor
  class Engine < Rails::Engine
    include Cms::Module
    
    js_files = config.action_view.javascript_expansions[:bcms_core]
    if js_files.include?(Cms.wysiwig_js)
      js_files.delete(Cms.wysiwig_js)
      js_files << '/bcms/fckeditor/fckeditor.js'
      js_files << '/bcms/fckeditor/editor.js'
    end
        
    initializer "bcms_fckeditor", :after=>'disable_dependency_loading' do 
      require 'bcms_fckeditor/section_controller_extensions'      
    end

  end
end