class BarcodesController < ApplicationController
  def scan
  end
  
  def process_barcode
    @barcode = Barcode.new(data: params[:barcode_data])
    if @barcode.save
      render json: { message: 'Barcode saved successfully' }, status: :ok
    else
      render json: { error: 'Failed to save barcode' }, status: :unprocessable_entity
    end
  end
end
