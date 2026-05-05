package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 62, capacity = 103, latency = 15, risk = 25, weight = 12 }
assert(policy.score(signal_case_1) == 92)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 80, capacity = 89, latency = 26, risk = 9, weight = 11 }
assert(policy.score(signal_case_2) == 172)
assert(policy.classify(signal_case_2) == "accept")
local signal_case_3 = { demand = 70, capacity = 82, latency = 15, risk = 7, weight = 9 }
assert(policy.score(signal_case_3) == 180)
assert(policy.classify(signal_case_3) == "accept")
