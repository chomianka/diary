class EntriesController < ApplicationController
	def index
		@entries = Entry.all.order('created_at desc')
	end

	def new
	end

	def create
		Entry.create(entry_params)

    	redirect_to entries_path
	end

	def entry_params
		params.require(:entry).permit(:title, :content)
	end

	def show
		@entry = Entry.find(params[:id])
	end
	def destroy
		@entry = Entry.find(params[:id])

		@entry.destroy
		
		redirect_to entries_path

	end
end
