class PostsController < ApplicationController
    def new
         @posts = Post.all
         @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to posts_new_path
    end
    def show
    	@post = Post.find(params[:id])
    end

    def edit
    	@post = Post.find(params[:id])
    end


    def update
        post = Post.find(params[:id])
        post.update(post_params)
        redirect_to show_post_path(post.id)
    end

    def destroy
    	post = Post.find(params[:id])
    	post.destroy
    	redirect_to posts_new_path

    end


    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end