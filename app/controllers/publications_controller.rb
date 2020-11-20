class PublicationsController < ApplicationController
    def index
        @publications = Publication.all
        render json: @publications
    end


    def create
         @publication = Publication.create(publication_params)
         render json: @publication
    end

    def update
    @publication = Publication.find(params[:id])
    @publication.update(publication_params)
    render json: @publication
    end


    def destroy
      @publication = Publication.find(params[:id])
      @publication.destroy
      render json: @publication
    end 

    private 
    def publication_params
        params.permit(:id, :title, :description, :rating, :date_pub, :img1, :genre_id, :author_id)
    end
end
