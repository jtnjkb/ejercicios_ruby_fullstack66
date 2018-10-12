module Api
    module V1
        class ArticulosController < ApplicationController
            def index
                articulos = Articulo.order("created_at DESC")
                render json: {
                    datos: articulos
                }, status: :ok
                
            end
            def show
                articulo = Articulo.find_by_id(params[:id])
                render json: {
                    datos: articulo
                }, status: :ok
            end

            def create
                articulo = Articulo.new(articulos_params)
                if articulo.save
                    render json: {
                        datos: articulo
                    }, status: :ok
                else
                    render json: {
                        datos: nil,
                        mensaje: articulo.errors
                    }, status: :unprocessable_entity
                end
            end

            def update
                articulo = Articulo.find_by_id(params[:id])
                if articulo.update_attributes(articulos_params)
                render json: {
                    datos: articulo

                }, status: :ok
                else
                    render json: {
                        datos: articulo,
                        mensaje: articulo.errors
    
                    }, status: :unprocessable_entity
                end
            end
            def destroy
                articulo = Articulo.find_by_id(params[:id])
                articulo.destroy
                render json: {
                    mensaje: "Articulo eliminado"

                }, status: :ok
            end

            private

            def articulos_params
                params.permit(:titulo, :contenido)
            end
            
        end
    end
end
