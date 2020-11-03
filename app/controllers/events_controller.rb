class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
  end

  def new
  	@event = Event.new
  end

  def create
 		@event = Event.new('start_date' => params[:start_date],
                  			 'duration' => params[:duration],
                  			  'title' => params[:title],
                  			   'description' => params[:description],
                  			    'price' => params[:price],
                  			     'location' => params[:location])
    @event.admin_id = current_user.id
   		if @event.save # essaie de sauvegarder en base
     		 flash[:success] = "Nouvel événement bien créé !"
         render 'events/index'
	    else
   		   render "new"
    	end
  end

  def show
  	@event = Event.find(params[:id])
  end

end
