#!/bin/bash

export http_proxy=http://oversea-squid2.ko.txyun:11080 https_proxy=http://oversea-squid2.ko.txyun:11080 no_proxy=localhost,127.0.0.1,localaddress,localdomain.com,internal,corp.kuaishou.com,test.gifshow.com,staging.kuaishou.com

cd /share/liweihao/repos/Pai-Megatron-Patch-LM4DC/examples/qwen2_5

echo "$(realpath ../../)"

export MP_DATASET_TYPE="raw"

bash -c "bash ./llm-dc/wandb-config.sh"

bash -c "
bash run_mcore_qwen.sh \
dsw  \
7B   \
4   \
256 \
5e-6   \
5e-7   \
2048  \
2048  \
bf16  \
1   \
1  \
1 \
true \
true \
true \
true \
full  \
false \
79  \
/share/liweihao/dataset/llm4dc/decompile-ghidra-100k/decompile-ghidra-100k-train.json   \
/share/liweihao/dataset/llm4dc/decompile-ghidra-100k/decompile-ghidra-100k-train.json   \
/share/liweihao/repos/Pai-Megatron-Patch-LM4DC/examples/qwen2_5/ckpt-source/Qwen2.5-Coder-7B-hf-to-mcore-te-tp1-pp1 \
782  \
19   \
/share/liweihao/repos/Pai-Megatron-Patch-LM4DC/examples/qwen2_5/ckpt-train/Qwen2.5-Coder-7B-hf-to-mcore-te-tp1-pp1-ghidra-100k
"