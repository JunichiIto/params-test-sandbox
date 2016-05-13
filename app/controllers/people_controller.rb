class PeopleController < ApplicationController
  def index
    @base = params[:age_base]
    @range = params[:range]
  end

  def create
    @base = params[:age_base]
    @range = params[:range]
  end
end
