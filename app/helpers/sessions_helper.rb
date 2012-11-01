module SessionsHelper

<<<<<<< HEAD
 def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end


def signed_in?
    !current_user.nil?
  end


=======
def sign_in(user)
cookies.permanent[:remember_token] = user.remember_token
self.current_user = user

end

def signed_in?
!current_user.nil?
end
>>>>>>> sign-up


def current_user=(user)
    @current_user = user
  end

<<<<<<< HEAD
def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end


=======
  def current_user
    @current_user  ||= User.find_by_remember_token(cookies[:remember_token])   # Useless! Don't use this line.
  end



def sign_out
self.current_user = nil
cookies.delete(:remember_token)

end
>>>>>>> sign-up
end
