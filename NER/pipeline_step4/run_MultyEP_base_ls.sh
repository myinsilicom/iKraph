export HF_HOME=cache
cd ..
wd=$(pwd)
cd pipeline_step4
model_path=$wd/pipeline_step3/pre_trained_models
data_path=$wd/pipeline_step2/split_3

CUDA="${1}"
TRAIN=$data_path/train.json
DEV=$data_path/dev.json
#MODEL="${4}"
BERT_MODEL=$model_path/RoBERTa-base-PM-M3-Voc-distill-align/RoBERTa-base-PM-M3-Voc-distill-align-hf

LEARNING_RATE=3e-5
RANDOM_SEED=42
NUM_TRAIN_EPOCHS=5
echo "CUDA=" $CUDA
NUM_TRAIN_EPOCHS=30
MODEL=model/roberta_base-PM-Voc-3r1e-5_bs16_LS0.05_ep

CUDA_VISIBLE_DEVICES="$CUDA"  python3 -u run_ner_roberta.py \
  --model_name_or_path $BERT_MODEL \
  --task_name ner \
  --train_file "$TRAIN" \
  --validation_file "$DEV" \
  --output_dir "$MODEL$NUM_TRAIN_EPOCHS" \
  --num_train_epochs="$NUM_TRAIN_EPOCHS" \
  --evaluation_strategy=epoch \
  --save_strategy=epoch \
  --save_steps=1000 \
  --learning_rate=$LEARNING_RATE \
  --per_device_train_batch_size=16 \
  --do_train \
  --do_eval \
  --label_smoothing_factor=0.05 \
  --max_seq_length=512 \
  --report_to none \
  --seed $RANDOM_SEED