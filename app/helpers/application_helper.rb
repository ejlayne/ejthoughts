module ApplicationHelper
  def admin?
    session[:password] == 'foobar'
  end
end
