class UsersController < ApplicationController
<<<<<<< HEAD
  def new
@user = User.new  
end


def show
    @user = User.find(params[:id])
  end


def create

@user = User.new(params[:user])
    if @user.save
flash[:success] = "Welcome to the Real App!"
       redirect_to @user
    else
      render 'new'
    end


  end

  def destroy
  end










=======

def show
@user = User.find(params[:id])
end

def create
@user = User.new(params[:user])
if 
@user.save
sign_in @user
flash[:success] = "Welcome to the Real App!"
redirect_to @user
else
render 'new'
end
end
 

def new
@user = User.new
end

def index 
end

def destroy
sign_out
redirect_to root_url
end
>>>>>>> sign-up
end
