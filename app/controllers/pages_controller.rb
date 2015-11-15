class PagesController < ApplicationController
  def person
    @people = People.all
  end
end
