package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 76, slack = 36, drag = 28, confidence = 74 }
assert(review.score(item) == 178)
assert(review.lane(item) == "ship")
