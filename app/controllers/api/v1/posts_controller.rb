module Api
    module V1
        class PostsController < ApplicationController

	        def index

            a = params[:id]
            ActiveRecord::Base.establish_connection "#{Rails.env}#{a}".to_sym

					  @posts = Post.order('created_at DESC')

					  render json: @posts
					end

        end
    end
end
