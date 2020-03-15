class Api::PostsController < ApplicationController

  def preview
    @html = view_context.markdown(params[:content])
  end
end