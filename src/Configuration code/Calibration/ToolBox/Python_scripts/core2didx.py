#%%
import numpy as np
import math

#%%
def core2didx(dim1, dim2, core_size, x_offset, y_offset):
    
    f1 = dim1 - (2*math.floor(dim1/2))  # check of dim1 is odd or even

    if (f1==0):                         # dim 1 is odd
        centre1 = (dim1-1)/2
        c1_1 = centre1-0.5
        c1_2 = centre1+0.5
        dim1_idx_start = c1_1 - core_size
        dim1_idx_stop = c1_1 + core_size
        #dim1_length = dim1_idx_stop - dim1_idx_start
    else:
        centre1 = dim1/2                # dim 1 is even
        c1_1 = centre1-0.5
        dim1_idx_start = c1_1 - core_size
        dim1_idx_stop = c1_1 + core_size
        #dim1_length = dim1_idx_stop - dim1_idx_start

    f2 = dim2 - (2*math.floor(dim2/2))  # check if dim2 is odd or even
    if(f2 == 0):                        # even
        centre2 = (dim2-1)/2
        c2_1 = centre2-0.5
        c2_2 = centre2+0.5
        dim2_idx_start = c1_1 - core_size
        dim2_idx_stop = c1_1 + core_size
        #dim2_length = dim2_idx_stop - dim2_idx_start

    else:                               # odd
        centre2 = dim2/2                
        c2_1 = centre2-0.5
        c2_2 = centre2-0.5
        dim2_idx_start = c1_1 - core_size
        dim2_idx_stop = c1_1 + core_size
        #dim2_length = dim2_idx_stop - dim2_idx_start

    left = dim1_idx_start + x_offset
    top = dim2_idx_start + y_offset
    right = dim1_idx_stop + x_offset
    bottom = dim2_idx_stop + y_offset

    rectangle = np.array([left,top,right,bottom])

    return rectangle

#%%

y = core2didx(512,512,25,0,0)
print(y)



    


# %%
