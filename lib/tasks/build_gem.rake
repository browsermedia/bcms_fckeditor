# Tasks required by Jeweler to build and release this gem.

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "bcms_fckeditor"
    gem.summary = %Q{A WYSIWIG editor for browsercms}
    gem.description = %Q{A module for replacing the default WYSIWIG editor of browsercms with FCKEditor 2.6.3.}
    gem.email = "github@browsermedia.com"
    gem.homepage = "http://github.com/browsermedia/bcms_fckeditor"
    gem.authors = ["BrowserMedia"]
    gem.rubyforge_project = 'bcms_fckeditor'
    gem.add_dependency('browsercms', '>=3.1.0')
    gem.files = Dir["public/bcms/fckeditor/**/*"]
    gem.files += Dir["public/bcms_config/fckeditor/fckstyles.xml"]
    gem.files += Dir["lib/bcms_fckeditor.rb"]
    gem.files += Dir["lib/bcms_fckeditor/*"]
    gem.files += Dir["rails/init.rb"]


    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

Jeweler::GemcutterTasks.new