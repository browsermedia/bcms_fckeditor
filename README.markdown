# BrowserCMS FCKEditor WYSIWIG editor module

Installing this module will change the WYSIWIG editor from the default CKEditor to FCKEditor
2.6.3 for editing Html Blocks.

As of version 1.0.4, it is possible to upload images and create sections through
the editor's file browser UI.

## Installation

    gem install bcms_fckeditor

## Set up your application to use the module

### 1. Edit config/environment.rb

    config.gem "browsercms"
    config.gem "bcms_settings"

### 2. Run the following command

    script/generate browser_cms


## Configuration

One of the files the gem will add to your application is /public/bcms_config/fckeditor/fckstyles.xml
You can change the styles that are directly available in the editor by changing this file.
It is put in this directory to allow you to edit it without worry that it will be overwritten by the gem.

## Uploading images and adding sections

As of version 1.0.4 it is possible to upload images while navigating the server
using FCKeditor's file browser. Adding images this way, is essentially the same
as adding a new ImageBlock through the CMS's UI. So, if an image is uploded
through the file browser, a new ImageBlock will be created with it's
corresponding attachment.

It is also possible to add new 'folders' through the file browser (which are just hidden
sections in BrowserCMS's parlance) and can be used to orginize uploaded images.

## Tips for building your own WYSIWIG module
If you would prefer to build your own WYSIWIG module, you will need to tell the CMS to use your javascript instead of the FCKEditor (or CKEditor) javascript.  This configuration is set in #{RAILS_ROOT}/lib/bcms_fckeditor.rb
Cms.wysiwig_js = ['/bcms/fckeditor/fckeditor.js', '/bcms/fckeditor/editor.js']

This statement sets the source of the javascript files for script tags in the head of the content-edit pages.
