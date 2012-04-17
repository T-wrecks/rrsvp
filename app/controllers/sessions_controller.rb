class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
    @events = Event.all
  end

  def edit
    @session = Session.find(params[:id])
    @events = Event.all
  end

  def create
    @session = Session.new(params[:session])
    @events = Event.all
    
    if @session.save
      redirect_to @session, :notice => 'Session was successfully created.' 
    else
      render :action => "new"
    end
  end

  def update
    @session = Session.find(params[:id])
    
    if @session.update_attributes(params[:session])
      redirect_to @session, :notice => 'Session was successfully updated.' 
    else
      render :action => "edit" 
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to sessions_url
  end
  
end
