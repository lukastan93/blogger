class TagsController < ApplicationController
    before_action :require_login, only: [:destroy]

    def show
        @tag = Tag.find(params[:id])
    end
    def index
        @tags = Tag.all
    end
    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy

        redirect_to "http://localhost:3000/tags/"
        flash.notice = "Tag '#{@tag.name}' Deleted!"
    end
end
