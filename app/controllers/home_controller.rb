class HomeController < ApplicationController
  def index
    @generator = RandomWord::WORDS
  end
end
