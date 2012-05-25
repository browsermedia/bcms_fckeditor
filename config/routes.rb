BcmsFckeditor::Engine.routes.draw do
  match '/file_browser.xml', :to => 'file_browser#index', :format => "xml", :as=>'file_browser'
  

end
