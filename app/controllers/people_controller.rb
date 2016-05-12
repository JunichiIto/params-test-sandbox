class PeopleController < ApplicationController
  def index
    @base = params[:age_base]
    @range = params[:range]
  end
end
