class Url < ActiveRecord::Base
  #attr_accessible :short, :long

letters = ('a'..'z').to_a

  def shorten
    u = "/"
    7.times do
      rand(2) == 0 ? u += rand(10).to_s : u += letters.sample
    end

    u
  end

end
