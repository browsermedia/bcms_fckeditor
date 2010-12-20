require 'bcms_fckeditor/routes'
Cms.wysiwig_js = ['/bcms/fckeditor/fckeditor.js', '/bcms/fckeditor/editor.js']

Cms::SectionsController.class_eval do
  protect_from_forgery :except => :file_browser

  def handle_file_browser_upload
    upfile = params[:NewFile]
    klass = params[:Type] == "File" ? FileBlock : ImageBlock
    file_path = @section.path == "/" ? "#{@section.path}#{upfile.original_filename}" : "#{@section.path}/#{upfile.original_filename}"
    begin
      klass.create!(:attachment_section => @section,
                    :attachment_file => upfile,
                    :attachment_file_path => file_path,
                    :publish_on_save => true,
                    :name => upfile.original_filename.capitalize)
      result = "0"
    rescue Exception => e
      result = "1,'#{escape_javascript(e.message.to_sentence)}'"
    end
    render :text => %Q{<script type="text/javascript">window.parent.frames['frmUpload'].OnUploadCompleted(#{result});</script>}, :layout => false
  end
end
