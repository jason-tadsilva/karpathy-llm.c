# importing torch  
import torch  

# get index of currently selected device  
torch.cuda.current_device() 

# get number of GPUs available  
torch.cuda.device_count() 

# get the name of the device  
torch.cuda.get_device_name(0)
