class LinksController < ApplicationController
	def new
		@link = Link.new
	end
	def create
		@link = Link.new
		 
	end

 def index
    @links = Link.all
  end

end
