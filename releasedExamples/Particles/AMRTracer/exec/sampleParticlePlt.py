import numpy as np

n_particles = 5000000

ppx, ppy, ppz = 1e6*np.random.normal(size=[3, n_particles])

ppm = np.ones(n_particles)
data = {'particle_position_x': ppx,
        'particle_position_y': ppy,
        'particle_position_z': ppz,
        'particle_mass': ppm}

import yt
from yt.units import parsec, Msun

bbox = 1.1*np.array([[min(ppx), max(ppx)], [min(ppy), max(ppy)], [min(ppz), max(ppz)]])
ds = yt.load_particles(data, length_unit=parsec, mass_unit=1e8*Msun, n_ref=256, bbox=bbox)
print(ds.field_list)
p = yt.ParticlePlot(ds, 'particle_position_x', 'particle_position_y','particle_mass')
p.set_unit('particle_mass', 'Msun')
p.zoom(32)
p.save()
