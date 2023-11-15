// Copyright (c) 2023, Tri Dao.

// Splitting the different head dimensions to different files to speed up compilation.

#include "flash_attn_v2/flash_fwd_launch_template.h"

template <>
void run_mha_fwd_<cutlass::half_t, 128>(Flash_fwd_params &params, cudaStream_t stream) {
    run_mha_fwd_hdim128<cutlass::half_t>(params, stream);
}