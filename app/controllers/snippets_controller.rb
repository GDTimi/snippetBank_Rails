class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
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

  private
  def snippet_params
    params.require(:snippet).permit(:filename, :codesnippet)
  end
end
