class PagesController < ApplicationController
  def index
    @people = Person.all
    @rows = Person.all.length / 4
    @count = 0
  end

  def new
  end

  def create
  	Person.create({
		:first_name => params[:first_name],
		:last_name => params[:last_name],
		:email => params[:email]
	})
	redirect_to '/people'
  end

  def show
    @person = Person.find_by(id: params[:id])
  end

  def edit
    @person = Person.find_by(id: params[:id])
  end

  def update
    person = Person.find_by(id: params[:id])
    person.update(
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :email => params[:email]
      )
    redirect_to '/people'
  end

  def destroy
    Person.find_by(id: params[:id]).destroy
    redirect_to '/people'
  end
end
