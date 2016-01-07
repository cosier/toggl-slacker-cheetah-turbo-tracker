class SlackInterfaceController < ApplicationController

	def index
		render json:{"text" => params.inspect << "\n\n" << SlackCommandParser.new.command(params)}
	end

	def authorize_slack 
		redirect_to "https://slack.com/oauth/authorize?client_id=17965490070.17965037873&scope=chat:write:bot"
	end

	def oauth
		redirect_to "https://slack.com/api/oauth.access?code=#{params[:code]}&client_id=17965490070.17965037873&client_secret=b8ac0e145d22b4bd13041c91873f47eb"
	end
end