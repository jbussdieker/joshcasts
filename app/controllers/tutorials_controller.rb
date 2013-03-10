class TutorialsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @tutorials = Tutorial.all
  end

  def show
    @tutorial = Tutorial.find(params[:id])
  end

  def new
    @tutorial = Tutorial.new
  end

  def edit
    @tutorial = Tutorial.find(params[:id])
  end

  def create
    @tutorial = Tutorial.new(params[:tutorial])
    if @tutorial.save
      redirect_to @tutorial, notice: 'Tutorial was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @tutorial = Tutorial.find(params[:id])

    if @tutorial.update_attributes(params[:tutorial])
      redirect_to @tutorial, notice: 'Tutorial was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @tutorial = Tutorial.find(params[:id])
    @tutorial.destroy

    redirect_to tutorials_url
  end
end
