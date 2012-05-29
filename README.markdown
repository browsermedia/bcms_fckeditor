# BrowserCMS FCKEditor WYSIWIG editor module

Installing this module will change the WYSIWIG editor from the default CKEditor to FCKEditor for html editing. 

## Features

* Upload Images through the Browse UI
* Create new sections through Browse UI

## Installation

Run the following from your shell.

    $ gem install bcms_fckeditor
	$ cd name_of_project
	$ rails g cms:install bcms_fckeditor

## Configuration

One of the files the gem will add to your application is /public/bcms_config/fckeditor/fckstyles.xml
You can change the styles that are directly available in the editor by changing this file.
It is put in this directory to allow you to edit it without worry that it will be overwritten by the gem.

## Uploading images and adding sections

It is possible to upload images while navigating the server using FCKeditor's file browser. Adding images this way, is essentially the same as adding a new ImageBlock through the CMS's UI. So, if an image is uploded through the file browser, a new ImageBlock will be created with it's corresponding attachment.

It is also possible to add new 'folders' through the file browser (which are just hidden sections in BrowserCMS's parlance) and can be used to organize uploaded images.

## Tips for building your own WYSIWIG module
If you would prefer to build your own WYSIWIG module, you will need to tell the CMS to use your javascript instead of the FCKEditor (or CKEditor) javascript.  Review the BcmsFckeditor::Engine for details on how to do this (lib/bcms_fckeditor/engine.rb)

## Issues

* When uploading a new file, the page does not automatically refresh on success or error. This is presumably due to changes in how browsers handle javascript being sent to random frames. Needs to reworked to be a call back (like CreateFolder).