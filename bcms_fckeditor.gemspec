# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_fckeditor/version"

Gem::Specification.new do |s|
  s.name = %q{bcms_fckeditor}
  s.version = BcmsFckEditor::VERSION

  s.authors = ["BrowserMedia"]
  s.description = %q{A BrowserCMS module that makes FCKEditor the default html editor.}
  s.email = %q{github@browsermedia.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = Dir["{app,config,db,lib}/**/*"]
  s.files += Dir["Gemfile", "LICENSE.txt", "COPYRIGHT.txt", "GPL.txt" ]
  s.test_files += Dir["test/**/*"]
  s.test_files -= Dir['test/dummy/**/*']
  s.add_dependency("browsercms", "< 3.6.0", ">= 3.5.0.rc4")
  
  s.homepage = %q{http://github.com/browsermedia/bcms_fckeditor}
  s.require_paths = ["lib"]
  s.rubyforge_project = s.name
  s.summary = %q{A WYSIWIG editor for BrowserCms}
end
