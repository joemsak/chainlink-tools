class AdvertisersController < ApplicationController
  def index
    @advertisers = Advertiser.active
  end
  
  def active
    @advertisers = Advertiser.current.paid
    render :template => 'advertisers/index'
  end
  
  def upcoming
    @advertisers = Advertiser.upcoming.paid
    render :template => 'advertisers/index'
  end

  def paid
    @advertisers = Advertiser.paid.active
    render :template => 'advertisers/index'
  end

  def unpaid
    @advertisers = Advertiser.unpaid.active
    render :template => 'advertisers/index'
  end

  def archived
    @advertisers = Advertiser.archived
    render :template => 'advertisers/index'
  end

  def show
    @advertiser = Advertiser.find(params[:id])
  end

  def new
    @advertiser = Advertiser.new
  end

  def create
    @advertiser = Advertiser.new(params[:advertiser])
    if @advertiser.save
      redirect_to advertisers_path, :notice => "Successfully created advertiser."
    else
      render :action => 'new'
    end
  end

  def edit
    @advertiser = Advertiser.find(params[:id])
  end

  def update
    @advertiser = Advertiser.find(params[:id])
    if @advertiser.update_attributes(params[:advertiser])
      redirect_to advertisers_path, :notice  => "Successfully updated advertiser."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @advertiser = Advertiser.find(params[:id])
    @advertiser.destroy
    redirect_to advertisers_url, :notice => "Successfully destroyed advertiser."
  end
end
