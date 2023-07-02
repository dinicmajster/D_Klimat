class AssetsController < ApplicationController
  def new
    @asset = Asset.new
    authorize @asset
  end

  def create
    @asset = Asset.new(asset_params)
    authorize @asset
    if @asset.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def asset_params
    params.require(:asset).permit(:asset_type, :active, :ownership, :submission, :company_code_id, :address, :comment)
  end
end
