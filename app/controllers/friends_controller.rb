class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end
end
