class ItemsController < ApplicationController
    def create
        render json: Item.create(params['item'])
    end

    def update
        render json: Item.update(params['id'], params['item'])
    end

    def delete
        render json: Item.delete(params['id'])
    end
end
