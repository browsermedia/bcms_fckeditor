require 'cms/module_installation'

class BcmsFckeditor::InstallGenerator < Cms::ModuleInstallation
  
  # If migrations are needed later, they need to be moved into the lib/generators/bcms_fckeditor/install/template dir
  #   since there can only be a single source root.
  source_root File.expand_path("../templates", __FILE__)

  # add_migrations_directory_to_source_root __FILE__
  # Add migrations to be copied, by uncommenting the following file and editing as needed.
  # copy_migration_file 'DATESTAMP_create_name_of_content_block.rb'
  
  def copy_public_files
    # Copy the default 'styles' file into the project, so developers can override
    copy_file 'fckstyles.xml', 'public/bcms_config/fckeditor/fckstyles.xml'
  end

end
