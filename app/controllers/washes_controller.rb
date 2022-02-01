class WashesController < ApplicationController

  def index
    @count = Wash.last_24_count
  end
end