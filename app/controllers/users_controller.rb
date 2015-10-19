class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def login
  end

  def loginverify
    result = User.all.where(
      email: params[:email],
      password: params[:password]).first

      if result
        session[:user_id] = result.id
        redirect_to root_url, :notice => 'Signed Up'

      else
        flash[:alert] = "Invalid email or password"
        redirect_to '/login'
    end
  end

  def logout
    session[:user_id] = nil
    session.clear
    redirect_to root_url, :notice => "Logged out!"
  end

  def profile
    @user = User.find_by(
      id: session[:user_id])
  end

  def signup
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome!"
      redirect_to root_url, :notice => 'Signed Up'
    else
      flash[:notice] = "There was a problem creating your account"
      render :index
    end
  end

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :sec_ques, :sec_ans)
  end

  def postsyoulike
  end

  def thisweek
  end

  def earlier
  end

  def bestoftoday
  end

  def bestofgroup
  end

  def topposts
  end

end
