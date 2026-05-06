# lualock

`lualock` is a compact Lua repository for sandbox, centered on this goal: Run capability-filtered plugins with deterministic resource policy checks.

## Why I Keep It Small

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Lualock Review Notes

For a quick review, compare `plugin drift` with `escape risk` before reading the middle cases.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for capability width and resource pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/lualock-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `plugin drift` and `escape risk`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `capability width`, `resource pressure`, `plugin drift`, and `escape risk`.

The Lua implementation avoids hidden state so fixture changes are easy to reason about.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Scope

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
