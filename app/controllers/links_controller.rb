class LinksController < ApplicationController

	def show
		@link = Link.find(params[:id])
	end

	def new
		@link = Link.new
	end

    def index
    @links = Link.all
    end

    def create
        @link = Link.new(link_params)
      #  binding.pry
        begin
        	 @link.save!
        rescue Exception => e
        	#flash[:danger] = "#{e.message}"
        	flash.now[:alert] = "#{e.message}"
        	render :new
        	return
        end
         redirect_to(links_url)
    end

    def edit
    @link = Link.find(params[:id])
    end

    def update
    temp = Link.new(link_params)
    @link = Link.find(params[:id])

    @link.title = temp.title
    @link.url = temp.url
    begin
    	@link.save!
    rescue Exception => e
    	    flash.now[:alert] = "#{e.message}"
        	render :edit
    	 return
    end
    @link.save    
    temp.destroy

    flash[:notice] = "File updated"
    redirect_to links_url  
     end

    def destroy
    @link = Link.find(params[:id])
    @link.destroy
    flash[:notice] = "File deleted"
    redirect_to links_url    
    end

	def link_params
      params.require(:link).permit(:title, :url)
    end

end
