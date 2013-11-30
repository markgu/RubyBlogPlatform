class User < ActiveRecord::Base
  has_many :tweets
  validates_presence_of :name, :userId, :password

  # @return [Object]
  def login(params)
    @user = User.find(params[:user_id])
    session[:userId] = params[:userId] if @user.password == params[:password]
  end

  def find_session
    return if sesseion[:userId]
    return false
  end

end
