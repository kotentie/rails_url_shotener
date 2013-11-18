module ShortenHelper



  def shorten
    letters = ('a'..'z').to_a
    u = "/"
    7.times do
      rand(2) == 0 ? u += rand(10).to_s : u += letters.sample
    end

    u
  end
end
