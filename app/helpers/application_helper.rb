module ApplicationHelper
	def logo
		image_tag("logo.png", :alt => "Cloud DnD", :class => "round", :height => 150, :width => 200)
	end
	
	def title
		base = "Cloud DnD"
		if @title.nil?
			base
		else
			"#{base} | #{@title}"
		end
	end
	
	def current_user
		nil
	end
end
