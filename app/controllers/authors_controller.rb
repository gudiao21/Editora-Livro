class AuthorsController < ApplicationController
  before_action :set_author, only: %i[ show edit update destroy ]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def edit
  end

 def create
  @author = Author.new(author_params)

  respond_to do |format|
    if @author.save
      format.html { redirect_to author_url(@author), notice: t('controllers.authors.create.success') }
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end
  end

  def update
    respond_to do |format|
      if @author.update(author_params)
        format.html { redirect_to author_url(@author), notice: t('controllers.authors.create.update') }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @author.destroy

    respond_to do |format|
      format.html { redirect_to authors_url, notice: t('controllers.authors.create.destroy') }
    end
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:name, :cpf)
    end
end
