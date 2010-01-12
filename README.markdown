# BrowserCMS FCKEditor WYSIWIG editor module

Installing this module will make change the WYSIWIG editor from the default CKEditor to FCKEditor 2.6.3 for editing Html Blocks.

## A.Instructions
1. Install the module
2. Configure the styles to match your needs

## B.Module Installation
Install the gem
>sudo gem install bcms_fckeditor

Configure your project to use the gem by adding
config.gem 'bcms_fckeditor'
to {RAILS_ROOT}/config/environment.rb

Add the necessary project files to your application
>script/generate browser_cms

## C.Editor configuration
One of the files the gem will add to your application is
{RAILS_ROOT}/public/bcms_config/fckeditor/fckstyles.xml

You can change the styles that are directly available in the editor by changing this file.  It is put in this directory to allow you to edit it without worry that it will be overwritten by the gem.

## D.Tips for building your own WYSIWIG module
If you would prefer to build your own WYSIWIG module, you will need to tell the CMS to use your javascript instead of the FCKEditor (or CKEditor) javascript.  This configuration is set in #{RAILS_ROOT}/lib/bcms_fckeditor.rb
Cms.wysiwig_js = ['/bcms/fckeditor/fckeditor.js', '/bcms/fckeditor/editor.js']

This statement sets the source of the javascript files for script tags in the head of the content-edit pages.