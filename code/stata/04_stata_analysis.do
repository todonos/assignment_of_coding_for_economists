//Analysis
use "data/cleaned/hotels-vienna-analysis.dta", clear

//level-level model
reg price distance
reg price distance stars_above_3
reg price distance stars_above_3 costumer_rating

//log-level model
reg ln_price distance

//graph
graph twoway (scatter price distance, mcolor(blue)) ///
	(lfit price distance, lcolor(orange)), ///
	xtitle("Distance to city (miles)") ytitle("Price (EURO)") ///
	title("Hotel price by distance to the city center", color(black)) ///
	note("Source: hotels-vienna dataset. Vienna, November 2017 weekday, N=220") ///
	saving("output/graph.gph", replace) ///
	name("last", replace)

