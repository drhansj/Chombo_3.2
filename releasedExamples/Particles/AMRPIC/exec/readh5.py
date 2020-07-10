import numpy as np
import h5py 

fileName = "plt000001.2d.hdf5"
f = h5py.File(fileName,  "r")
for item in f.attrs.keys():
    print(item + ":", f.attrs[item])
dd = f['/level_0/data:datatype=0']
pd = f['/level_0/particles:data']
dd_np = np.asarray(dd)
pd_np = np.asarray(pd,dtype=np.float64)
pd_np_2d = np.reshape(pd_np,(int(len(pd_np)/7),7))
header = 'col1 col2 col3 col4 col5 col6 col7'
np.savetxt('plt000001.2d.txt',pd_np_2d,fmt='%5.5f',header=header)
f.close()

