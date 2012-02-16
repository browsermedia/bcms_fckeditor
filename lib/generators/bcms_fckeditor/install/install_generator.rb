require 'cms/module_installation'

class BcmsFckeditor::InstallGenerator < Cms::ModuleInstallation
  source_root File.expand_path("../templates", __FILE__)

  def create_editable_styles_file_for_customization
    copy_file 'fckstyles.xml', 'public/bcms_config/fckeditor/fckstyles.xml'
  end

end
