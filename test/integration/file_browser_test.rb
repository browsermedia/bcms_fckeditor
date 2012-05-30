# This class was ported from the Core CMS, but requires a ton of state setup to work.
# A good example of why testing modules is so hard.

# class FileBrowserControllerTest < ActionController::IntegrationTest
#   
#   def setup
#     # silence_stream(STDOUT) do
#       load File.join(File.dirname(__FILE__), '../dummy/db/seeds.rb')
#     # end
#     login_as_cms_admin
#   end
# 
#   
#   def test_root_section
#     @foo = create(:section, :parent => root_section, :name => "Foo", :path => '/foo')
#     @bar = create(:section, :parent => root_section, :name => "Bar", :path => '/bar')
#     @home = create(:page, :section => root_section, :name => "Home", :path => '/home')
# 
#     
#     get '/bcms_fckeditor/file_browser.xml', {"CurrentFolder" => "/", "Command" => "GetFilesAndFolders", "Type" => "Page"}, {:format => "xml"}
# 
#     assert_response :success
#     assert_equal "application/xml", @response.content_type
#     assert_select "Connector[command=?][resourceType=?]", "GetFilesAndFolders", "Page" do
#       assert_select "CurrentFolder[path=?][url=?]", "/", "/"
#       assert_select "Folders" do
#         assert_select "Folder[name=?]", "Foo"
#         assert_select "Folder[name=?]", "Bar"
#       end
#       assert_select "Files" do
#         assert_select "File[name=?][url=?][size=?]", "Home", "/home", "?"
#       end
#     end
#   end
#   
#   def test_sub_section
#     @foo = create(:section, :parent => root_section, :name => "Foo", :path => '/foo')
#     @bar = create(:section, :parent => @foo, :name => "Bar", :path => '/foo/bar')
#     @foo_page = create(:page, :section => @foo, :name => "Foo Page", :path => '/foo/page')
#     @home = create(:page, :section => root_section, :name => "Home", :path => '/home')
#     get :file_browser, :format => "xml", "CurrentFolder" => "/Foo/", "Command" => "GetFilesAndFolders", "Type" => "Page"
# 
#     assert_response :success
#     assert_equal "application/xml", @response.content_type
#     assert_select "Connector[command=?][resourceType=?]", "GetFilesAndFolders", "Page" do
#       assert_select "CurrentFolder[path=?][url=?]", "/Foo/", "/Foo/"
#       assert_select "Folders" do
#         assert_select "Folder[name=?]", "Bar"
#       end
#       assert_select "Files" do
#         assert_select "File[name=?][url=?][size=?]", "Foo Page", "/foo/page", "?"
#       end
#     end
#   end
#   
#   private
#   def root_section
#     Cms::Section.first
#   end
#   
#   def create(model, options={})
#     case model
#     when :section
#       Cms::Section.create!(options)
#     when :page
#       Cms::Page.create!(options)
#     end
#   end
#   
#   def login_as(user, password = "password")
#     get "/cms/login"
#     assert_response :success
#     post "/cms/login", :login => user.login, :password => password
#     assert_response :success
#   end
# 
#   def login_as_cms_admin
#     admin = Cms::User.first
#     login_as(admin)
#     admin
#   end
#   
# end