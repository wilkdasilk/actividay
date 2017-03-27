// called on file upload, client-side
// source: http://stevenyue.com/blogs/validate-attachment-file-size-and-type-in-rails/
$(document).on('turbolinks:load', function(){
  function validateFiles(inputFile) {
   var maxExceededMessage = "This file exceeds the maximum allowed file size (5 MB)";
   var extErrorMessage = "Only image file with extension: .jpg, .jpeg, .gif or .png is allowed";
   var allowedExtension = ["jpg", "jpeg", "gif", "png"];

   var extName;
   var maxFileSize = $(inputFile).data('max-file-size');
   var sizeExceeded = false;
   var extError = false;

   $.each(inputFile.files, function() {
     if (this.size && maxFileSize && this.size > parseInt(maxFileSize)) {sizeExceeded=true;};
     extName = this.name.split('.').pop();
     if ($.inArray(extName, allowedExtension) == -1) {extError=true;};
   });
   if (sizeExceeded) {
     window.alert(maxExceededMessage);
     $(inputFile).val('');
   };

   if (extError) {
     window.alert(extErrorMessage);
     $(inputFile).val('');
   };
  }
}
