class RsvpsController < ApplicationController

  def index
    @rsvps = Rsvp.all
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end
  
  def new
    @rsvp = Rsvp.new
    @sessions = Session.where("event_id = ?", 2)
  end
  
  def create
    @rsvp = Rsvp.new(params[:rsvp])
    @sessions = Session.where("event_id = ?", 2)
   
    if @rsvp.save 
      redirect_to @rsvp, :notice => 'RSVP was successfully created.' 
    else
      render :action => "new" 
    end
  end
  
  
  def edit
    @rsvp = Rsvp.find(params[:id])
    @sessions = Session.all
  end
  
  
  def update
    @rsvp = Rsvp.find(params[:id])

    if @rsvp.update_attributes(params[:rsvp])
      redirect_to @rsvp, :notice => 'User was successfully updated.' 
    else
      render :action => "edit" 
    end
  end


  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy
  end
  
  
end
