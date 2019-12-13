class BooksController < ApplicationController
    def new
        @property = Property.find(params[:property_id])
    end

    def create
        books = Book.create(book_params)
        redirect_to user_url(params[:user_id])
    end

    private
    def book_params
        params.permit(:from_date, :to_date, :property_id, :user_id)
    end



end
