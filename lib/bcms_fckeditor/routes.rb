module Cms::Routes
  def routes_for_bcms_fckeditor
    namespace(:cms) do |cms|
      #cms.content_blocks :fckeditors
    end  
  end
end
