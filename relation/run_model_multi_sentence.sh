export CUDA_VISIBLE_DEVICES=1

cd model_multi_sentence
bash run.sh
python majority_vote_models_re_stronger.py