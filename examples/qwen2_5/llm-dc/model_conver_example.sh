cd /share/liweihao/repos/Pai-Megatron-Patch-LM4DC/toolkits/model_checkpoints_convertor/qwen


# hf2mcore
bash hf2mcore_qwen2.5_convertor.sh \
7B \
/share/model/Qwen2.5-Coder-7B \
/share/liweihao/repos/Pai-Megatron-Patch-LM4DC/examples/qwen2_5/ckpt-source/Qwen2.5-Coder-7B-hf-to-mcore-te-tp1-pp1  \
1  \
1  \
bf16 \
true \
false

# # mcore2hf
# bash hf2mcore_qwen2.5_convertor.sh \
# 7B \
# /share/liweihao/repos/Pai-Megatron-Patch-LM4DC/examples/qwen2_5/ckpt-source/Qwen2.5-Coder-7B-hf-to-mcore-te-tp1-pp1 \
# /share/model/Qwen2.5-Coder-7B-mcore-te-to-hf  \
# 1  \
# 1  \
# bf16 \
# true \
# true \
# /share/model/Qwen2.5-Coder-7B \