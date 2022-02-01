class Api::V1::WashesController < ApplicationController
  def create
    Wash.create
    render json: { message: 'Wash created'}, status: 200
  end
end