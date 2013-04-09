class MatchesController < InheritedResources::Base

	# Return latest commentary via get method for match ajax update
	def latest_commentary
		@match = Match.find(params[:id])
		@commentaries = Commentary.find(:all, :conditions => ['match_id = ? AND id >= ?', @match, params[:latestCommentaryId]])

		respond_to do |format|
			format.js
		end
	end
end
