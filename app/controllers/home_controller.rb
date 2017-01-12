class HomeController < ApplicationController
  def index
    @generator = Word.all.map(&:name).shuffle
  end
end
