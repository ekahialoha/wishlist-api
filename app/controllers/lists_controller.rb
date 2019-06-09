class ListsController < ApplicationController
    def index
        render json: List.all
    end

    def search
        render json: List.all(params['query'])
    end

    def show
        render json: List.find(params['id'])
    end

    def create
        render json: List.create(params['list'])
    end

    def update
        render json: List.update(params['id'], params['list'])
    end

    def delete
        render json: List.delete(params['id'])
    end

    def random
        render json: List.random
    end
end
