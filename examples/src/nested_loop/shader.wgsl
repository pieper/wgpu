@group(0) @binding(0)
var<storage, read_write> v_indices: array<u32>; // this is used as both input and output for convenience


@compute
@workgroup_size(1)
fn main(@builtin(global_invocation_id) id: vec3<u32>) {
    
    let idi32 : vec3<i32> = vec3<i32>(id);
    var dimensions : vec3<i32> = vec3<i32>(3,3,3);
    var kk : i32; var jj : i32; var ii : i32;
    var neighborsVisited : u32 = 0;

    for (kk = -1; kk < 2; kk += 1) {
        for (jj = -1; jj < 2; jj += 1) {
            for (ii = -1; ii < 2; ii += 1) {

                if (kk == 0 && jj == 0 && ii == 0) {
                    continue;
                }

                if (idi32.z + kk < 0 || idi32.z + kk > dimensions.z - 1) {
                    continue;
                }

                if (idi32.y + jj < 0 || idi32.y + jj > dimensions.y - 1) {
                    continue;
                }

                if (idi32.x + ii < 0 || idi32.x + ii > dimensions.x - 1) {
                    continue;
                }

                neighborsVisited += 1u;
            }
        }
    }

    //v_indices[idi32.x + idi32.y * 3 + idi32.z * 9] = id.z;

    v_indices[idi32.x + idi32.y * 3 + idi32.z * 9] = neighborsVisited;
}
