#= require ckeditor/init

# TODO: 升級 rails 4 有很多雜事要做, 記得 check -> https://github.com/galetahub/ckeditor#usage-with-rails-4-assets

jQuery ($) ->
  $(document).on 'ready page:load', ->
    $('[data-ckeditor-content-editor]').each ->      
      $this = $(this)
      CKEDITOR.replace(
        this

        toolbar: [
          { name: 'document', items : [ 'Source','-','Preview' ] }
          { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] }
          { name: 'editing', items : [ 'Find','Replace','-','SelectAll' ] }
          { name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak' ] }
          '/',
          { name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] }
          { name: 'text', items :  ['TextColor','BGColor'],}
          { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-' ] }
          { name: 'position', items : ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'] }
          { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote' ] }
          { name: 'links', items : [ 'Link','Unlink' ] }
          { name: 'tools', items : [ 'Maximize' ] }
        ]

        allowedContent: true
        
        filebrowserImageBrowseUrl: $this.data('upload-url')

        filebrowserImageUploadUrl: $this.data('upload-url')
      )
