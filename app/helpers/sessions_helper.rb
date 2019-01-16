module SessionsHelper
  # 渡されたユーザーでログインする
  # railsで事前定義されているsessionメソッドを使用
  # 一時cookiesに暗号化済みのユーザーIDが設定される
  # 一時cookiesはブラウザが閉じられると期限がきれる
  def log_in(user)
    session[:user_id] = user.id
  end
end
