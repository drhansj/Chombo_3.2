import numpy as np
import pprint
import yt
from yt import load_particles
from yt import ParticlePlot
from yt.units import g, cm, Msun, parsec
n_part= 262144
t0data=np.loadtxt(fname="plt000200.2d.txt")
ppx=t0data[:,0]
ppy=t0data[:,1]
ppz=np.ones(n_part)*0.1
ppm=t0data[:,6]

#data = {
#    'particle_position_x': (ppx, 'cm'),
#    'particle_position_y': (ppy, 'cm'),
#    'particle_mass': (np.ones(n_part), 'g'),
#    'particle_velocity_x': (np.zeros(n_part), 'cm/s'),
#    'particle_velocity_y': (np.zeros(n_part), 'cm/s'),
#    'smoothing_length': (0.25*np.ones(n_part), 'cm'),
#    'density': (np.ones(n_part), 'g/cm**3'),
#}
quit()
data = {'particle_position_x': ppx,
        'particle_position_y': ppy,
        'particle_position_z': ppz,
        'particle_mass': ppm}

bbox = np.array([[0, 10], [0, 10], [0,10]])
#ds = load_particles(data=data, length_unit=cm, mass_unit=g, bbox=bbox)
ds = yt.load_particles(data, length_unit=cm, mass_unit=g, n_ref=256, bbox=bbox)
ad= ds.all_data()

p = yt.ParticlePlot(ds, 'particle_position_x', 'particle_position_y','particle_mass')
p.set_width((10, 'cm'))
p.set_unit('particle_mass', 'g')
#p.zoom(32)
p.save()
