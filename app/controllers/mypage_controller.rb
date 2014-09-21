class MypageController < ApplicationController
  def index
    @services = CompanyService.all
  end
end
