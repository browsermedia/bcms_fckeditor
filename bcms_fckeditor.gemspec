SPEC = Gem::Specification.new do |spec| 
  spec.name = "bcms_fckeditor"
  spec.rubyforge_project = spec.name
  spec.version = "1.0.0"
  spec.summary = "A Fckeditor Module for BrowserCMS"
  spec.author = "BrowserMedia" 
  spec.email = "github@browsermedia.com" 
  spec.homepage = "http://www.browsercms.org" 
  spec.files += Dir["app/**/*"]
  spec.files += Dir["db/migrate/*.rb"]
  spec.files -= Dir["db/migrate/*_browsercms_*.rb"]
  spec.files -= Dir["db/migrate/*_load_seed_data.rb"]
  spec.files += Dir["lib/bcms_fckeditor.rb"]
  spec.files += Dir["lib/bcms_fckeditor/*"]
  spec.files += Dir["rails/init.rb"]
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README"]
end
