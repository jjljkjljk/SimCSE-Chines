export CUDA_VISIBLE_DEVICES=0
python train_sts.py \
    --device gpu \
    --output_path output/cmnli \
    --lr 3e-5 \
    --dropout 0.1 \
    --epochs 3 \
    --batch_size_train 64 \
    --batch_size_eval 256 \
    --num_workers 0 \
    --eval_step 100 \
    --max_len 100 \
    --seed 42 \
    --train_file data/cmnli_sup_train_data.csv \
    --dev_file data/STS-B/dev.txt \
    --test_file data/STS-B/test.txt \
    --pretrain_model_path pretrain_model/bert-base-chinese \
    --pooler cls \
    --train_mode supervise \
    --do_train \
    --do_eval