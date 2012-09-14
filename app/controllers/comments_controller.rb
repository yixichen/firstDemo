# -*- encoding : utf-8 -*-
#-*- coding:utf-8 -*-
class CommentsController < ApplicationController
	http_basic_authenticate_with :name =>'yixichen', :password => '123456',:only =>:destroy
	def create
		@blog=Blog.find(params[:blog_id])
		@comment=@blog.comments.create(params[:comment])
		redirect_to blog_path(@blog)
	end
	def destroy
		params.each { |key,value| puts "出来了吗？#{key} => #{value}"}
		@blog=Blog.find(params[:blog_id])
		@comment=@blog.comments.find(params[:id])
		@comment.destroy
		redirect_to blog_path(@blog)
	end
end
