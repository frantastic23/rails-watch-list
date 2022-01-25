class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    # find the parent - garden
    @list = List.find(params[:list_id])
    # create a child - plant
    @bookmark = Bookmark.new(bookmark_params)
    # here we assign the bookmark a list
    @bookmark.list = @list
    # ifelsing
    if @bookmark.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to lists_path, notice: 'Bookmark was successfully destroyed.'
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
