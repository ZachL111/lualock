# Review Journal

The repository goal stays the same: run capability-filtered plugins with deterministic resource policy checks. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its sandbox focus without claiming live deployment or external usage.

## Cases

- `baseline`: `capability width`, score 178, lane `ship`
- `stress`: `resource pressure`, score 136, lane `watch`
- `edge`: `plugin drift`, score 227, lane `ship`
- `recovery`: `escape risk`, score 132, lane `watch`
- `stale`: `capability width`, score 215, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
