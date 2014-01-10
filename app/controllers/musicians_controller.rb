class MusiciansController < ApplicationController
	def new
		@musician = Musician.new
	end

	def create
		name = params[:name] || params[:musician][:name]
		Musician.create(name: name)
		redirect_to musicians_path
	end

	def index
		@musicians = Musician.all 
	end
end