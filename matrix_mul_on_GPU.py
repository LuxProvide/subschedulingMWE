import torch

# Check if CUDA (GPU support) is available
if torch.cuda.is_available():
    # Set default to use CUDA device
    torch.set_default_tensor_type(torch.cuda.FloatTensor)
    print("Using CUDA:", torch.cuda.get_device_name(0))
else:
    raise ValueError("CUDA is not available. Using CPU instead.")
    # Set default to use CPU
    torch.set_default_tensor_type(torch.FloatTensor)

# Create random tensors
tensor1 = torch.randn(3, 3)
tensor2 = torch.randn(3, 3)

# Perform matrix multiplication
result = torch.matmul(tensor1, tensor2)

print("Result of matrix multiplication:", result)
