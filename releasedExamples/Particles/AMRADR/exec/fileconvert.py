import glob 
import h5py
import numpy as np
for name in glob.glob('*.hdf5'):
    f=h5py.File(name,"r")
    pd = f['/level_0/particles:data']
    pd_np = np.array(pd)
    pd_np_2d = np.reshape(pd_np,(int(len(pd_np)/10),10))
    np.savetxt(name[0:12]+'.txt',pd_np_2d, fmt="%5.5f")
    f.close()


