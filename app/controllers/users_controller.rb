class UsersController < ApplicationController
  def new
  end
	def index
		@users = User.all
	end
  def create
	@user = User.new
	@user.username = params[:user][:username]
	@user.password = params[:user][:password]
	@user.save!
	flash[:notice] = "#{@user.id} is updated"
	render :show
  end
	def new
		@user = User.new
	end

  def show
	@user = User.find(params[:id])
  end
	
	def update
	@user = User.find(params[:id])
	@user.username = params[:user][:username]
	@user.password = params[:user][:password]
	@user.save!
	flash[:notice] = "#{@user.id} is updated"
	redirect_to :action => :index
	end
	def edit
		@user = User.find(params[:id])
	end
end
