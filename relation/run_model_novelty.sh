export CUDA_VISIBLE_DEVICES=1
cd model_novelty
bash train_novel_punct.sh
bash pred_novel_punct.sh
python majority_vote_7models_HMT.py