class UsersController < ApplicationController
  respond_to :html, :xml, :json

  before_filter :authenticate_user!

  def index
  	@users = User.all

  	respond_with @users
  end

  def show
  	@user = User.find(params[:id])
  end
  
end
