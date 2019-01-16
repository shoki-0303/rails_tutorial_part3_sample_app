class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # !! を使用することで強制的にtrue or falseを明示できる
    if !!(user && user.authenticate(params[:session][:password]))
      # ログインに成功した際の処理を書く
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
  end
end
