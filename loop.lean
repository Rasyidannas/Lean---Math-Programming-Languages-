import Lean
open System

def main : IO Unit := do
  let start ← IO.monoMsNow  -- get start time in milliseconds
  for i in [0:100] do
    IO.println s!"Loop {i}"
  let stop ← IO.monoMsNow   -- get end time
  let duration := stop - start
  IO.println s!"Elapsed time: {duration} ms"

