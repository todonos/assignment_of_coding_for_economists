//Master do
cd "C:\Users\Todoo\OneDrive - Central European University\2023_Winter semester\Coding for economists"

//mkdir final_assignment
cd "final_assignment/"
//mkdir data
//cd "data"
//mkdir raw
//mkdir cleaned

//Download data
do "code/stata/02_stata_download_data.do"

//Clean data
do "code/stata/03_stata_clean_data.do"

//Analysis
do "code/stata/04_stata_analysis.do"
