class RegionsController < ApplicationController
  def show
    @region = nil
  end

  def index
    @regions = Region.all
  end
end
