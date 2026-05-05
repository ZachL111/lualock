package = "lualock"
version = "0.1-1"
source = { url = "." }
description = { summary = "Run capability-filtered plugins with deterministic resource policy checks.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
