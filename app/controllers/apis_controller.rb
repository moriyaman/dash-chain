class ApisController < ApplicationController

  def company_services
     company_service = CompanyService.new({
       company_id: params[:company_id],
       login_name: params[:login_name],
       password: params[:password],
       user_id: params[:user_id],
       url: params[:url]
     })
     render json: { result: company_service.save }
  end

  protect_from_forgery with: :null_session
end
