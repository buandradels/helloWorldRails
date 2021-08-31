class MaquinasController < ApplicationController
	def index
		@maquinas = Maquina.all
	end

	def new 
		@maquina = Maquina.new
	end
	
	def create
		@maquina = Maquina.new(maquina_params)
		
		if @maquina.save
			redirect_to @maquina
		else
			render :new
		end
	end
	
	def show
		@maquina = Maquina.find(params[:id])
		
		respond_to do |format|
			format.html 
			format.json { render :json => @maquina}
		end
	end
	
	def edit
		@maquina = Maquina.find(params[:id])
	end
	
	def update
		@maquina = Maquina.find(params[:id])
		
		if @maquina.update(maquina_params)
			redirect_to @maquina
		else
			render :edit
		end
	end
	
	def destroy
		@maquina = Maquina.find(params[:id])
		@maquina.destroy if @maquina.created_at > 30.minutes.ago
		
		redirect_to root_path
	end
	
	private
	
	def maquina_params
		params.require(:maquina).permit(:tipo, :nome, :descricao, :mesesdegarantia, :datadecompra, :quebrada, :created_at)
	end
end
