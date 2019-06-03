export PYTHONPATH=$HOME/Leveraging:$PYTHONPATH
export TESTHOME=$HOME/Leveraging
nohup python -u $TESTHOME/thumt/bin/trainer.py --input source_training_data target_training_data --vocabulary source_vocab target_vocab --model local  --validation valid_source --references valid_target --parameters batch_size=3264,update_cycle=2,eval_steps=2000,save_checkpoint_steps=1000,device_list=[0,1,2,3],attention_dropout=0.1,relu_dropout=0.1,residual_dropout=0.1,learning_rate=1,warmup_steps=4000,wins=1,layers=2,l2_scale=1e-7,train_steps=100000 2>log&
