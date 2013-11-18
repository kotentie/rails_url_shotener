class ApplicationController < ActionController::Base
  helper_method :shorten
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


   def shorten
    letters = ('a'..'z').to_a
    u = "/"
    7.times do
      rand(2) == 0 ? u += rand(10).to_s : u += letters.sample
    end

    u
  end
end
