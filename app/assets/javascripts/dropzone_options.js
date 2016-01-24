$(document).ready(function (){
  //Dropzone.autoDiscover = false ;

  Dropzone.options.newImage = {

    paramName: "image[no_pasted_images]",

    uploadMultiple: true ,

    addRemoveLinks: true ,

    success: function(file, response){
      this.removeFile(file);
    }


  };

});
