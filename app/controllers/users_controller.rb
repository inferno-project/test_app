class Users < ActionController
  before do
    @user = User.find(params[:id])
  end

  def login
    
  end

  def login_form
    
  end

  def logout
    
  end
end
