class PinsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
  end


  private

  def pin_params
    params.require.permit(:title, :description)
  end

end