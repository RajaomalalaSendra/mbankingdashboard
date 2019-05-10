module HomeHelper
	# Calcul des pourcentages 
	def pourcentage(nombre, total)
		begin
			number = "#{nombre}/#{total}"
	    	pourcentage_nombre = (Rational(*(number.split('/').map( &:to_i )))*100).to_f
	    	return pourcentage_nombre.round(2)
	    rescue ZeroDivisionError => e
	    	return 0
	    end
	end
	def show_percentage(pourcentage, title)
	  if pourcentage >= 75 && pourcentage < 100
	  		"<li class=\"bar teal\" style=\"height:90%;\"> <div class=\"percent\"> #{pourcentage} 
	        <span>%</span></div><div class=\"skill\">#{title} 
	  		</div> </li>".html_safe
	  elsif pourcentage  >= 50 && pourcentage < 75
		  "<li class=\"bar salmon\" style=\"height:75%;\"> <div class=\"percent\">
		  	#{pourcentage} <span>%</span></div> <div class=\"skill\"> #{title} 
		  	</div></li>".html_safe
	  elsif pourcentage  >= 25 && pourcentage < 50
		  "<li class=\"bar peach\" style=\"height:50%;\">
		  	<div class=\"percent\">#{pourcentage}<span>%</span></div>
		  	<div class=\"skill\">#{title}</div>
		  </li>".html_safe
	  elsif pourcentage  >= 0 && pourcentage < 25
		  "<li class=\"bar lime\" style=\"height:10%;\">
		  	<div class=\"percent\">#{pourcentage}<span>%</span></div>
		  	<div class=\"skill\">#{title}</div>
		  </li>".html_safe
 	  end
    end
    def getToday
    	date = Date.today
		current_user.dashboards.where(created_at: date.midnight..date.end_of_day)
	end
	def getYesterday
    	date = Date.today - 1
		current_user.dashboards.where(created_at: date.midnight..date.end_of_day)
	end
	def getTwoDaysAgo
		date = Date.today - 2
		current_user.dashboards.where(created_at: date.midnight..date.end_of_day)
	end
	def getDaysAgo(d)
		date = Date.today - d
		current_user.dashboards.where(created_at: date.midnight..date.end_of_day)
	end
	def getWeeksAgo(w)
		date = Date.today - (w*7) 
		date_before = Date.today - ((w+1)*7)
		current_user.dashboards.where(created_at: date_before.midnight..date.end_of_day)
	end
	def getAMonthAgo(m)
		date = Date.today - (30*m) 
		date_before = Date.today - (30*(m+1))
		current_user.dashboards.where(created_at: date_before.midnight..date.end_of_day)
	end
end