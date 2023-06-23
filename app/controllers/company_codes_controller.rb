class CompanyCodesController < ApplicationController
  def new
    @company_code = CompanyCode.new
    authorize @company_code
  end
end
