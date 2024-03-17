# nested-loop

Runs a compute shader to check that nested loops compile correctly.

Created to test https://github.com/gfx-rs/wgpu/issues/5067

## To Run

```
RUST_LOG=nested_loop cargo run --bin wgpu-examples nested_loop
```

## Example Output

```
[7, 11, 7]
[11, 17, 11]
[7, 11, 7]

[11, 17, 11]
[17, 26, 17]
[11, 17, 11]

[7, 11, 7]
[11, 17, 11]
[7, 11, 7]
```
