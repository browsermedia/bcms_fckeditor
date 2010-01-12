require File.join(File.dirname(__FILE__) + '/../../test_helper')

class FckkeditorTest < ActionController::IntegrationTest
  include Cms::IntegrationTestHelper

  def setup
    login_as_cms_admin
  end

  def test_fckeditor_select
    get new_cms_html_block_url
    assert_response :success
    
    assert_tag :tag => "select",
               :attributes => { :id => "dhtml_selector", 
                                :onchange =>  "toggleEditor('html_block_content', this)"}, 
               :child => { :tag => "option", :content =>  "Rich Text" }
  end
  def test_fckeditor_js_added
    get new_cms_html_block_url
    assert_response :success
    
    assert_tag :tag => "script",
               :attributes => { :src => /^\/bcms\/fckeditor\/fckeditor.js.*/} 
  end
  def test_no_ckeditor_js_added
    get new_cms_html_block_url
    assert_response :success
    
    assert_no_tag :tag => "script",
               :attributes => { :src => /^\/bcms\/ckeditor\/.*/} 
  end

end
