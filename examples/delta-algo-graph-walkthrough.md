# Delta Algo Graph Flow Walkthrough

This note is the quickest way to read the extra review model in `delta-algo-graph-flow`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 153 | ship |
| stress | search depth | 173 | ship |
| edge | boundary pressure | 201 | ship |
| recovery | complexity | 139 | watch |
| stale | input width | 210 | ship |

Start with `stale` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `recovery` becomes less cautious without a clear reason, I would inspect the drag input first.
