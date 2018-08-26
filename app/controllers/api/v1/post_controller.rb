class Api::V1::PostController < ApplicationController

	def index
		posts = Post.order('created_at DESC')
		render json: { status: 'Success', message: 'Show all posts', data: posts }, status: :ok
	end

	def show
		begin
			post = Post.find(params[:id])
			render json: {status: 'Success', message: 'Show post', data: post}, status: :ok
		rescue ActiveRecord::RecordNotFound
			render json: {status: 'Error', message: 'Post not found', data: post}, status: :unprocessable_entity
		end
	end

	def create
		post = Post.create(post_params)
		if post.save
			render json: { status: 'Success', message: 'Created post', data: post }, status: :ok
		else
			render json: { status: 'Error', message: 'Failed to create post', data: post.errors }, status: :unprocessable_entity
		end
	end

	def destroy
		begin
			post = Post.find(params[:id])
			post.destroy
			render json: { status: 'Success', message: 'Destroyed post', data: post }, status: :ok
		rescue ActiveRecord::RecordNotFound
			render json: { status: 'Error', message: "Can't destroy post as post does not exist", data: post }, status: :unprocessable_entity
		end
	end

	def update
		begin
			post = Post.find(params[:id])
			if post.update_attributes(post_params)
				render json: { status: 'Success', message: 'Destroyed post', data: post }, status: :ok
			else
				render json: { status: 'Error', message: "Unable to update post", data: post }, status: :unprocessable_entity
			end
		rescue ActiveRecord::RecordNotFound
			render json: { status: 'Error', message: "Can't update post as post does not exist", data: post }, status: :unprocessable_entity
		end
	end

	private
		def post_params
			params.permit(:title, :body)
		end
end