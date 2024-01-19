class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)

    if @language.save
      redirect_to @language
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def language_params
    params.require(:language).permit(:name, :is_active)
  end
end
