class ListsController < ApplicationController
  before_action :set_list, only: %w[show create update destroy]
  def index
    @lists = List.all
  end

  def show
  end

  private

  def set_list
    @list = List.find(params[:id])
  end
end
