class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def login
    @user = User.new
  end

  def logout
  end

  def profile
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
