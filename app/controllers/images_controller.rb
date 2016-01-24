class ImagesController < ApplicationController

  def new
    @image = Image.new
  end

  def create
      @image = Image.new (image_params)
      p "/*/*/*/*//*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/"
      p image_params
      if @image.save
        render json: { message: image_params}

      else
        render json: {error: @image.errors}
      end
  end



  def show
    @image = Image.find(params[:id])
  end

  def destroy
    @image = Image.find(params[:id])

    if @image.destroy
      render json: { message: "File deleted from server "}
    else
      render json: {error: @image.errors.full_messages.join(',')}
    end
  end

  private

  def image_params
    #params.require(:image).permit({no_pasted_images:[]}) if params[:image]
    params[:image]
  end
end
