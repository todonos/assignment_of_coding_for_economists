//Clean data
import delimited "data/raw/hotels-vienna.csv", clear varnames(1)

keep if accommodation_type == "Hotel"
keep if stars >= 2 & stars <= 4 & stars !=. 
count 
//218obs

//distance
sum distance, detail
tab distance
hist distance 
drop if distance > 10 
//3obs deleted

//price
tab price
summarize price, detail
drop if price > `r(p95)' 
//10obs deleted
hist price

//rating
tab rating
destring rating, generate(rating_float) ignore("NA")
count if missing(rating_float)
sum rating_float, detail
replace rating_float = `r(p50)' if rating_float == .
rename rating_float costumer_rating

//stars
sum stars, detail
tab stars
gen stars_above_3 = 0
replace stars_above_3 = 1 if stars > 3

gen ln_price = ln(price)

keep neighbourhood price stars hotel_id distance accommodation_type stars_above_3 costumer_rating ln_price 
save "data/cleaned/hotels-vienna-analysis.dta", replace
clear
