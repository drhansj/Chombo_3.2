import yt
ds=yt.load('plt000000.2d.hdf5')
p=yt.ParticlePlot(ds,'particle_posiiton_x','particle_position_y')
p.save()

