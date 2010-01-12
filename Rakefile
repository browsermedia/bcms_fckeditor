# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "bcms_fckeditor"
    gem.summary = %Q{A module for replacing the default WYSIWIG editor of browsercms with FCKEditor 2.6.3.}
    gem.description = %Q{WYSIWIG editor for browsercms.}
    gem.email = "github@browsermedia.com"
    gem.homepage = "http://www.browsercms.org"
    gem.authors = ["BrowserMedia"]
    gem.rubyforge_project = 'bcms_fckeditor'
    gem.files += Dir["public/bcms/fckeditor/**/*"]
    gem.files += Dir["public/bcms_config/fckeditor/fckstyles.xml"]
    gem.files += Dir["lib/bcms_fckeditor.rb"]
    gem.files += Dir["lib/bcms_fckeditor/*"]
    gem.files += Dir["rails/init.rb"]


    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
