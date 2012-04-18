class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @sessions = Session.where("event_id = ?", 2)
  end


  def edit
    @user = User.find(params[:id])
    @sessions = Session.where("event_id = ?", 2)
  end

  def create
    @sessions = Session.where("event_id = ?", 2)
    @user = User.new(params[:user])
    @user.sessions << Session.find(params[:session][:ids])
   
    if @user.save 
      redirect_to @user, :notice => 'User was successfully created.' 
    else
      render :action => "new" 
    end
  end


  def update
    @user = User.find(params[:id])
    @user.sessions = Session.find(params[:session][:ids])
    
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice => 'User was successfully updated.' 
    else
      render :action => "edit"
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end
  
end
