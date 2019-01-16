module SessionsHelper
  # 渡されたユーザーでログインする
  # railsで事前定義されているsessionメソッドを使用
  # 一時cookiesに暗号化済みのユーザーIDが設定される
  # 一時cookiesはブラウザが閉じられると期限がきれる
  def log_in(user)
    session[:user_id] = user.id
  end

  #現在ログイン中のユーザーを返す
  def current_user
    if session[:user_id]
      # 左から順番にtrueを返すまで実行
      # @current_userが存在しない場合
      #Dbへの問い合わせ
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !@current_user.nil?
  end
end
