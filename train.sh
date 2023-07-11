torchrun --nproc_per_node=8 train.py /mnt/Data/Imagenet/ \
  --model deit_base_patch16_224 \
  --epochs 300 \
  --opt adamW \
  --sched inverse_sqrt \
  --warmup-epochs 5 \
  --warmup-lr 1e-6 \
  --warmup_init_lr 1e-6 \
  --warmup_updates 4000 \
  --lr 5e-4 \
  --weight-decay 0.05 \
  --batch-size 64 \
  --aa rand-m9-mstd0.5 \
  --smoothing 0.2 \
  --mixup 0.8 \
  --cutmix 1.0 \
  --model-ema \
  --model-ema-decay 0.9999 \
  --num-classes 1000 \
  --output ./dense_ckpts/ \
  --workers 10 \
  --recovery-interval 2502
