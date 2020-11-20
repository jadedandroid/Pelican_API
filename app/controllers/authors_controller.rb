class AuthorsController < ApplicationController

    def index
        @authors = Author.all
        render json: @authors
    end


    def create
         @author = Author.create(author_params)
         render json: @author
    end

    def update
    @author = Author.find(params[:id])
    @author.update(author_bio)
    render json: @author
    end


    def destroy
      @author = Author.find(params[:id])
      @author.destroy
      render json: @author
    end 

    private 
    def author_params
        params.permit(:id, :first_name, :last_name, :bio, :residence, :rating, :img)
    end

    def author_bio
        params.permit(:bio)
    end
end

