class ListsController < ApplicationController

    def index
        render json: List.all
    end

    def show
        render json: List.find(params['id'])
    end

    def create
        render json: List.find(params['list'])
    end

    def update
        render json: List.find(params['id'], params['list'])
    end

    def delete
        render json: List.find(params['id'])
    end

end
