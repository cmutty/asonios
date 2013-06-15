class AppsController < ApplicationController
  def new
  	@app = App.new
  end
  def show
  	@app = App.find(params[:id])
  end
  def create
    @app = App.new(params[:app])
    if @app.save
      flash[:success] = "Thanks for adding an App! :)"
      redirect_to @app
    else
      render 'new'
    end
  end
  def index
  	@apps = App.all
  end

  def edit
  	@app = App.find(params[:id])
  end
  def update
    @app = App.find(params[:id])
    if @app.update_attributes(params[:app])
      flash[:success] = "App Updated!"
      redirect_to @app
    else
      render 'edit'
    end
   end
   #see 9.2.1 about trying to add signed-in user for edits
   #add the ability to delete 9.4.2
end
