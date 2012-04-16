class RsvpsController < ApplicationController
  # GET /rsvps
  # GET /rsvps.json
  def index
    @rsvps = Rsvp.all
  end

  # GET /rsvps/1
  # GET /rsvps/1.json
  def show
    @rsvp = Rsvp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @rsvp }
    end
  end
  

  def new
    @rsvp = Rsvp.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @rsvp }
    end
  end
  
  def create
    @rsvp = Rsvp.new(params[:rsvp])
   
    respond_to do |format|
      if @rsvp.save 
        format.html { redirect_to @rsvp, :notice => 'RSVP was successfully created.' }
        format.json { render :json => @rsvp, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @rsvp.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def edit
    @rsvp = Rsvp.find(params[:id])
    @sessions = Session.all
  end
  
  def update
    @rsvp = Rsvp.find(params[:id])

    respond_to do |format|
      if @rsvp.update_attributes(params[:rsvp])
        format.html { redirect_to @rsvp, :notice => 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @rsvp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy

    respond_to do |format|
      format.html { redirect_to rsvps_url }
      format.json { head :ok }
    end
  end
  
end
