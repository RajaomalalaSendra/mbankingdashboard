module HomeHelper
	# Calcul des pourcentages 
	def pourcentage(nombre, total)
		number = "#{nombre}/#{total}"
	    pourcentage_nombre = (Rational(*(number.split('/').map( &:to_i )))*100).to_f
	    return pourcentage_nombre.round(2)
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
end