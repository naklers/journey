class JourneysController < ApplicationController
  def index
    @journeys = Journey.all

    render("journeys/index.html.erb")
  end

  def show
    @journey = Journey.find(params[:id])

    render("journeys/show.html.erb")
  end

  def new
    @journey = Journey.new

    render("journeys/new.html.erb")
  end

  def create
    @journey = Journey.new


    save_status = @journey.save

    if save_status == true
      redirect_to(:back, :notice => "Journey created successfully.")
    else
      render("journeys/new.html.erb")
    end
  end

  def edit
    @journey = Journey.find(params[:id])

    render("journeys/edit.html.erb")
  end

  def update
    @journey = Journey.find(params[:id])


    save_status = @journey.save

    if save_status == true
      redirect_to(:back, :notice => "Journey updated successfully.")
    else
      render("journeys/edit.html.erb")
    end
  end

  def destroy
    @journey = Journey.find(params[:id])

    @journey.destroy

    if URI(request.referer).path == "/journeys/#{@journey.id}"
      redirect_to("/", :notice => "Journey deleted.")
    else
      redirect_to(:back, :notice => "Journey deleted.")
    end
  end
end
