class ImagesController < ApplicationController
  before_action :set_report

  def create
    add_more_images(images_params[:images])
    flash[:error] = "Failed uploading images" unless @report.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting image" unless @report.save
    redirect_back(fallback_location: root_path)
  end

  private

  def set_report
    @report = Report.find(params[:report_id])
  end

  def add_more_images(new_images)
    images = @report.images 
    images += new_images
    @report.images = images
  end

  def remove_image_at_index(index)
    remain_images = @report.images
    if index == 0 && @report.images.size == 1
      @report.remove_images!
    else
      deleted_image = remain_images.delete_at(index) 
      deleted_image.try(:remove!)
      @report.images = remain_images
    end
  end

  def images_params
    params.require(:report).permit({images: []}) # allow nested params as array
  end
end