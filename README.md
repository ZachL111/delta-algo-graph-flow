# delta-algo-graph-flow

`delta-algo-graph-flow` is a OCaml project in algorithms. Its focus is to package an OCaml local lab for graph analysis with framed sample traffic, bounds and ordering tests, and documented operating limits.

## Purpose

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how input width and boundary pressure should influence a review result.

## Delta Algo Graph Flow Review Notes

`stale` and `recovery` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/delta-algo-graph-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `input width` and `complexity`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `input width`, `search depth`, `boundary pressure`, and `complexity`.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limits

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
