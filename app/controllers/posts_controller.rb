class PostsController < ApplicationController
# before_action @post = Post.find(params[:id])

    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id].to_i)
        render 'posts/show'
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to root_path
    end

    def edit
        @post = Post.find(params[:id].to_i)
        # if @post.update(post_params)
        #   redirect_to(@post)
        # else
          render "posts/edit"
        # end
    end

    def update
        @post = Post.find(params[:id].to_i)
        @post.update(post_params)
        redirect_to root_path
    end

    def destroy
        @post = Post.find(params[:id].to_i)
        @post.delete
        redirect_to root_path
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
