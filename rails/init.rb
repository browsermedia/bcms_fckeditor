gem_root = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Cms.add_to_rails_paths gem_root
Cms.add_generator_paths gem_root, "db/migrate/[0-9]*_*.rb"
Cms.add_generator_paths gem_root, "public/bcms/fckeditor/**/*"
if (!File.exists?("#{RAILS_ROOT}/public/bcms_config/fckeditor/fckstyles.xml"))
  Cms.add_generator_paths gem_root, "public/bcms_config/fckeditor/fckstyles.xml"  
end
