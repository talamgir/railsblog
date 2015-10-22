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
  end

  def destroy
    session[:user_id] = nil
    session.clear
    render :logout, :notice => "Logged out!"
  end


  def show
    @user = User.find_by(
      id: session[:user_id])

    @post = Post.new
    @post.user_id = @user.id

    @posts = Post.all
    
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
   @user = User.find_by(
    id: session[:user_id])
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

 def forgotpassword
 end

 def securitypage
  @user = User.find_by(
      id: session[:user_id])
 end

 def confirmation
  @user = User.find_by(
      id: session[:user_id])
 end

 def secemail
    sece = User.all.where(
      email: params[:email]).first

    if sece
      session[:user_id] = sece.id
      redirect_to '/securitypage'
    else
      flash[:alert] = "That email address is not in the database!"
    redirect_to '/login'
  end
end

 def security  
  secy = User.where(
    sec_ans: params[:sec_ans]).first

  if secy
    session[:user_id] = secy.id
    redirect_to '/confirmation'

  else
    flash[:alert] = "That answer is incorrect"
    redirect_to '/login'
  end
end

def passwordrecall
  puts params.inspect
  message = params["message"]
  mandrill = Mandrill::API.new ENV["cvCesEX6ZNBKScps_okTUg"]
  message = {
    :subject=> "Your Password",
    :to=> [{
      :email=> "#{params[:email]}",
      :name=> "Your Password",
      }],
      :from_email=> "talamgir@law.gwu.edu",
      :html=> "<html>#{params[:fname]}," + "Your password is " + "#{params[:password]}</html>"
        # :message=> "#{params[:user_name]}," + "you are confirmed for your reservation, your comments were " + "#{params[:user_story]}"
      }

      sending = mandrill.messages.send(message)

      flash[:alert] = "Your password has been sent to your email address"
      redirect_to '/login'

    end
  end


