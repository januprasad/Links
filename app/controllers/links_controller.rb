class LinksController < ApplicationController
	def new
		@link = Link.new
	end
    def index
    @links = Link.all
    end
    def create
        @link = Link.new(link_params)
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

    def show
    	# should redirect to the url paramtre of the respective link
      	redirect_to links_url
    end


 def link_params
    params.require(:link).permit(:title, :url)
  end  
end
