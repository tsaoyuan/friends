class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(params[:friend])
    # 成功
    if @friend.save
      redirect_to friends_path, notice: "新增朋友成功!"
    # 失敗
    else 
      render :new
    end  

  end

  
end
