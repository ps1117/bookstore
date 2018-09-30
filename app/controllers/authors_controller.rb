class AuthorsController < ApplicationController
  def new
    @page_title = "Add New Author"
    @author = Author.new
  end

  def edit
    @author = Author.find_by(params[:id])
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Author Created Successfully"
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def show
    @author = Author.find_by(params[:id])
  end

  def destroy
    @author = Author.find_by(params[:id])
    @author.destroy
    flash[:notice] = "Author Removed"
    redirect_to authors_path
  end

  def index
    @authors = Author.all
  end

  def update
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
