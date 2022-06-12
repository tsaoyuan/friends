class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find_by(id: params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    # 成功
    if @friend.save
      redirect_to friends_path, notice: "新增朋友成功!"
    # 失敗
    else 
      render :new
    end  
  end

  def edit
    @friend = Friend.find_by(id: params[:id])
  end
  
  def update
    @friend = Friend.find_by(id: params[:id])

    if @friend.update(friend_params)
      redirect_to friends_path, notice: "編輯成功!"
    # 失敗
    else 
      render :edit
    end  

  end

  def destroy
    @friend = Friend.find_by(id: params[:id])
    @friend.destroy if @friend
    redirect_to friends_path, notice: "刪除朋友成功!"
  end

  private
    def friend_params
      params.require(:friend).permit(:name, :email, :tel, :twitter)
    end

  
end
