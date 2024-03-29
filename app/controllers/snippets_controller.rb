class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @entry = Entry.find(params[:entry_id])
    @language = Language.find(params[:language_id])
    @snippet = @entry.snippets.create(snippet_params)
    redirect_to root_path
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])

    if @snippet.update(snippet_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def snippet_params
    params.require(:snippet).permit(:filename, :codesnippet)
  end
end
