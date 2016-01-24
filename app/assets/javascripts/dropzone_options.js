$(document).ready(function (){
  Dropzone.autoDiscover = false;

  $(".dropzone").dropzone({
    paramName: "image[no_pasted_images]",
    autoProcessQueue: false,
    uploadMultiple: true,
    addRemoveLinks: true,
    init: function() {
      var dropzone = this;

      $(".dropzone button").on('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        dropzone.processQueue();
      })
    },
    success: function(file, response){
      this.removeFile(file);
    }
  });

});
