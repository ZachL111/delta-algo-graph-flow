#use "core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 65; capacity = 97; latency = 18; risk = 11; weight = 4 };;
expect (score signal_case_1 = 137);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 97; capacity = 76; latency = 27; risk = 7; weight = 11 };;
expect (score signal_case_2 = 207);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 89; capacity = 94; latency = 21; risk = 14; weight = 9 };;
expect (score signal_case_3 = 173);;
expect (classify signal_case_3 = "review");;

#use "review.ml";;
let domain_review = { signal = 63; slack = 48; drag = 31; confidence = 72 };;
expect (review_score domain_review = 153);;
expect (review_lane domain_review = "ship");;
