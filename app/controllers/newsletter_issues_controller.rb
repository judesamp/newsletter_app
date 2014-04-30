class NewsletterIssuesController < ApplicationController

	def index
		@all_newsletter_issues = NewsletterIssue.all
	end

	def new
		@new_newsletter_issue = NewsletterIssue.new
	end

	def show
		@newsletter = NewsletterIssue.find(params[:id])
	end

	def create
		@new_newsletter_issue = NewsletterIssue.new(newsletter_params)
		if @new_newsletter_issue.save
			redirect_to newsletter_issues_path
		else
			redirect_to new_newsletter_issue_path
		end
	end

	def edit
		@newsletter = NewsletterIssue.find(params[:id])
	end

	def update
		@newsletter = NewsletterIssue.find(params[:id])
		if @newsletter.update_attributes(newsletter_params)
			redirect_to newsletter_issues_path
		else
			redirect_to edit_newsletter_issue_path
		end
	end

	def destroy
		@newsletter = NewsletterIssue.find(params[:id])
		if @newsletter.delete
			redirect_to newsletter_issues_path
		else
			redirect_to newsletter_issue_path
		end
	end

	private

	def newsletter_params
		params.require(:newsletter_issue).permit(:title, :number, :status, :publish_date, :organization_id)
	end
end
