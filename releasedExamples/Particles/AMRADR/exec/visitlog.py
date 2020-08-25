# Visit 3.1.2 log file
ScriptVersion = "3.1.2"
if ScriptVersion != Version():
    print "This script is for VisIt %s. It may not work with version %s" % (ScriptVersion, Version())
ShowAllWindows()
OpenDatabase("localhost:/home/rochi/Desktop/Chombo_3.2/releasedExamples/Particles/AMRADR/exec/plt*.3d.hdf5 database", 0)
metadata = GetMetaData("localhost:/home/rochi/Desktop/Chombo_3.2/releasedExamples/Particles/AMRADR/exec/plt*.3d.hdf5 database", -1)
AddPlot("Mesh", "Mesh", 1, 0)
MeshAtts = MeshAttributes()
MeshAtts.legendFlag = 0
MeshAtts.lineWidth = 0
MeshAtts.meshColor = (0, 0, 0, 255)
MeshAtts.meshColorSource = MeshAtts.Foreground  # Foreground, MeshCustom, MeshRandom
MeshAtts.opaqueColorSource = MeshAtts.Background  # Background, OpaqueCustom, OpaqueRandom
MeshAtts.opaqueMode = MeshAtts.Auto  # Auto, On, Off
MeshAtts.pointSize = 0.05
MeshAtts.opaqueColor = (255, 255, 255, 255)
MeshAtts.smoothingLevel = MeshAtts.None  # None, Fast, High
MeshAtts.pointSizeVarEnabled = 0
MeshAtts.pointSizeVar = "default"
MeshAtts.pointType = MeshAtts.Point  # Box, Axis, Icosahedron, Octahedron, Tetrahedron, SphereGeometry, Point, Sphere
MeshAtts.showInternal = 0
MeshAtts.pointSizePixels = 2
MeshAtts.opacity = 1
SetPlotOptions(MeshAtts)
HideActivePlots()
AddOperator("ThreeSlice", 0)
ThreeSliceAtts = ThreeSliceAttributes()
ThreeSliceAtts.x = 500
ThreeSliceAtts.y = 500
ThreeSliceAtts.z = 500
ThreeSliceAtts.interactive = 1
SetOperatorOptions(ThreeSliceAtts, 0, 0)
AddPlot("Pseudocolor", "rho", 1, 0)
AddOperator("ThreeSlice", 0)
ThreeSliceAtts = ThreeSliceAttributes()
ThreeSliceAtts.x = 500
ThreeSliceAtts.y = 500
ThreeSliceAtts.z = 500
ThreeSliceAtts.interactive = 1
SetOperatorOptions(ThreeSliceAtts, 0, 0)
DrawPlots()
DeleteActivePlots()
DeleteActivePlots()
AddPlot("Pseudocolor", "rho", 1, 0)
DrawPlots()
SetActivePlots(0)
SetActivePlots(0)
AddOperator("Slice", 0)
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 24
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, -1, 0)
SliceAtts.axisType = SliceAtts.YAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 0, 1)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 0
SetOperatorOptions(SliceAtts, 0, 0)
DrawPlots()
# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.552283, 0.61592, 0.561806)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (0.336592, 0.78128, -0.525649)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 46
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, -1, 0)
SliceAtts.axisType = SliceAtts.YAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 0, 1)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 0
SetOperatorOptions(SliceAtts, 0, 0)
TimeSliderNextState()
TimeSliderNextState()
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 46
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, 0, 1)
SliceAtts.axisType = SliceAtts.ZAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 90
SetOperatorOptions(SliceAtts, 0, 0)
# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.380255, 0.516839, 0.766997)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (0.211862, 0.855916, -0.471722)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 21
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, 0, 1)
SliceAtts.axisType = SliceAtts.ZAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 90
SetOperatorOptions(SliceAtts, 0, 0)
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 44
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, 0, 1)
SliceAtts.axisType = SliceAtts.ZAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 90
SetOperatorOptions(SliceAtts, 0, 0)
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 77
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, 0, 1)
SliceAtts.axisType = SliceAtts.ZAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 90
SetOperatorOptions(SliceAtts, 0, 0)
# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.540672, 0.664554, 0.515792)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (0.704988, 0.692475, -0.1532)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.590479, 0.78363, 0.193025)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (0.798334, 0.532086, 0.282042)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.563431, 0.826088, -0.0111843)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (0.552738, 0.386986, 0.738053)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.408991, 0.53904, -0.736316)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (0.0613613, 0.821307, 0.567177)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.360889, 0.50952, -0.78112)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (0.260845, 0.859283, 0.439991)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 82
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, 0, 1)
SliceAtts.axisType = SliceAtts.ZAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 90
SetOperatorOptions(SliceAtts, 0, 0)
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 45
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, 0, 1)
SliceAtts.axisType = SliceAtts.ZAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 0
SliceAtts.phi = 90
SetOperatorOptions(SliceAtts, 0, 0)
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 45
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (-1, 0, 0)
SliceAtts.axisType = SliceAtts.XAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 90
SliceAtts.phi = 0
SetOperatorOptions(SliceAtts, 0, 0)
# Begin spontaneous state
View3DAtts = View3DAttributes()
View3DAtts.viewNormal = (-0.644653, -0.583376, -0.494059)
View3DAtts.focus = (500, 500, 500)
View3DAtts.viewUp = (-0.714075, 0.690281, 0.116661)
View3DAtts.viewAngle = 30
View3DAtts.parallelScale = 866.025
View3DAtts.nearPlane = -1732.05
View3DAtts.farPlane = 1732.05
View3DAtts.imagePan = (0, 0)
View3DAtts.imageZoom = 1
View3DAtts.perspective = 1
View3DAtts.eyeAngle = 2
View3DAtts.centerOfRotationSet = 0
View3DAtts.centerOfRotation = (500, 500, 500)
View3DAtts.axis3DScaleFlag = 0
View3DAtts.axis3DScales = (1, 1, 1)
View3DAtts.shear = (0, 0, 1)
View3DAtts.windowValid = 1
SetView3D(View3DAtts)
# End spontaneous state

SetTimeSliderState(0)
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 21
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (-1, 0, 0)
SliceAtts.axisType = SliceAtts.XAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 1, 0)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 90
SliceAtts.phi = 0
SetOperatorOptions(SliceAtts, 0, 0)
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 21
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, -1, 0)
SliceAtts.axisType = SliceAtts.YAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 0, 1)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 180
SliceAtts.phi = 0
SetOperatorOptions(SliceAtts, 0, 0)
SliceAtts = SliceAttributes()
SliceAtts.originType = SliceAtts.Percent  # Point, Intercept, Percent, Zone, Node
SliceAtts.originPoint = (0, 0, 0)
SliceAtts.originIntercept = 0
SliceAtts.originPercent = 21
SliceAtts.originZone = 0
SliceAtts.originNode = 0
SliceAtts.normal = (0, -1, 0)
SliceAtts.axisType = SliceAtts.YAxis  # XAxis, YAxis, ZAxis, Arbitrary, ThetaPhi
SliceAtts.upAxis = (0, 0, 1)
SliceAtts.project2d = 0
SliceAtts.interactive = 1
SliceAtts.flip = 0
SliceAtts.originZoneDomain = 0
SliceAtts.originNodeDomain = 0
SliceAtts.meshName = "Mesh"
SliceAtts.theta = 180
SliceAtts.phi = 0
SetOperatorOptions(SliceAtts, 0, 0)
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
TimeSli