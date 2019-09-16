class PagesController < ApplicationController
	def index
		@user_article_summary = UserArticleSummary.all.where(user_id: 1).where('created_at> ?', Date.today - 48.hours)
	end
	def new
	end
	def create
	end
	def update
	end
	def edit
	end
	def show
	end
	def destroy
	end

	def about
	end
end
