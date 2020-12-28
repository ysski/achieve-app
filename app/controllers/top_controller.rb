class TopController < ApplicationController
  def index
    @lists = List.includes(:user).order("created_at DESC")
  end
end
