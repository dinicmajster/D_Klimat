class CompanyCodesController < ApplicationController
  before_action :get_company_code, only: :show

  def new
    @company_code = CompanyCode.new
    authorize @company_code
  end

  def create
    @company_code = CompanyCode.new(company_code_params)
    authorize @company_code
    if @company_code.save
      redirect_to company_code_path(@company_code)
    else
      render :new, status: :unprocessed_entity
    end
  end

  def show
  end

  private

  def company_code_params
    params.require(:company_code).permit(:cocod, :entity, :active)
  end

  def get_company_code
    @company_code = CompanyCode.find(params[:id])
  end
end
