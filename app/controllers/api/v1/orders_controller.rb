module Api
  module V1
    class OrdersController < ApplicationController
      before_action :set_order, only: [:show, :update]
      skip_before_action :verify_authenticity_token

      # GET /api/v1/orders/:id
      def show
        render json: @order
      end

       # GET /api/v1/orders
      def index
        byebug

        @orders = Order.all
        render json: @orders
      end

      # POST /api/v1/orders
      def create
     
        @order = Order.new(order_params)
        
        if @order.save
          render json: @order, status: :created
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end

      def update
        if @order.update(order_params)
          render json: @order
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end

      private

      def set_order
        @order = Order.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Order not found' }, status: :not_found
      end

      # Strong parameters for order
      def order_params
        params.require(:order).permit(:status, :orderDate, :customer_id)
      end

    end
  end
end
