# nested-loop

Runs a compute shader to check that nested loops compile correctly.

Created to test https://github.com/gfx-rs/wgpu/issues/5067

## To Run

```
RUST_LOG=nexted_loop cargo run --bin wgpu-examples nested_loop
```

## Example Output

```
No numbers were provided, defaulting to [1, 2, 3, 4]
Steps: [0, 1, 7, 2]
```
