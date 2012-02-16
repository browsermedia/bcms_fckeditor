Rails.application.routes.draw do

  mount BcmsFckeditor::Engine => "/bcms_fckeditor"
	mount_browsercms
end
