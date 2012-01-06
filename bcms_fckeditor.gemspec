# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_fckeditor/version"

Gem::Specification.new do |s|
  s.name = %q{bcms_fckeditor}
  s.version = BcmsFckEditor::VERSION

  s.authors = ["BrowserMedia"]
  s.date = %q{2011-03-11}
  s.description = %q{A BrowserCMS module that makes FCKEditor the default html editor.}
  s.email = %q{github@browsermedia.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = Dir["public/bcms/fckeditor/**/*"]
  s.files += Dir["public/bcms_config/fckeditor/fckstyles.xml"]
  s.files += Dir["lib/**/*"]
  
  s.homepage = %q{http://github.com/browsermedia/bcms_fckeditor}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{bcms_fckeditor}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A WYSIWIG editor for BrowserCms}
  s.test_files = Dir['test/**/*']
  s.add_dependency(%q<browsercms>, ["~> 3.3.0"])
end

