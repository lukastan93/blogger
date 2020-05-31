class CommentsController < ApplicationController
    before_action :require_login, except: [:create]
end
