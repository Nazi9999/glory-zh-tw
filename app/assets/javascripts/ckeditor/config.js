CKEDITOR.editorConfig = function( config )
{
    // config.extraPlugins = "imagebrowser";
    // config.imageBrowser_listUrl = "/path/to/images_list.json";
    // if (m = location.pathname.match(/news\/(\d+)\/edit/)) {
    //     config.filebrowserImageBrowseUrl = "/news/" + m[1] + "/pictures";
    //     config.filebrowserImageUploadUrl = "/news/" + m[1] + "/pictures";
    // } else {
    //     config.filebrowserImageBrowseUrl = "/pictures";
    //     config.filebrowserImageUploadUrl = "/pictures";
    // }
    // config.filebrowserUploadUrl = "/ckeditor/attachment_files";
    config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
    config.filebrowserImageUploadUrl = "/ckeditor/pictures";
    config.toolbar_MyToolbar =
    [
        { name: 'document', items : [ 'Source','-','Preview' ] },
        { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
        { name: 'editing', items : [ 'Find','Replace','-','SelectAll' ] },
        { name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'
                  ] },
                '/',
        { name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
        { name: 'text', items :  ['TextColor','BGColor'],},
        { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-' ] },
        { name: 'position', items : ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'] },
        { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote' ] },
        { name: 'links', items : [ 'Link','Unlink' ] },
        { name: 'tools', items : [ 'Maximize' ] }
    ];
    config.cke_116_select;
    config.width = 785;
    config.toolbar = 'MyToolbar';
}
CKEDITOR.config.allowedContent = true;

CKEDITOR.on( 'dialogDefinition', function( ev ) {
    // Take the dialog name and its definition from the event data.
    var dialogName = ev.data.name;
    var dialogDefinition = ev.data.definition;
// Check if the definition is from the dialog window you are interested in (the "Link" dialog window).
    if ( dialogName == 'link' ) {
        var tab = dialogDefinition.getContents('target');
        var urlField = tab.get( 'linkTargetType' );
        urlField[ 'default' ] = '_blank';
        // dialogDefinition.removeContents( 'Upload' );
    }
});