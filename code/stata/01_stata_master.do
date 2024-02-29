//Master do
cd "C:\Users\Todoo\OneDrive - Central European University\2023_Winter semester\Coding for economists/final_assignment"

//mkdir final_assignment
cd "assignmentof_coding_for_economists/"
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
