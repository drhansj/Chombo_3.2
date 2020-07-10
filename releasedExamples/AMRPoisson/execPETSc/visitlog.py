# Visit 3.1.2 log file
ScriptVersion = "3.1.2"
if ScriptVersion != Version():
    print "This script is for VisIt %s. It may not work with version %s" % (ScriptVersion, Version())
ShowAllWindows()
OpenDatabase("localhost:/home/rochi/Desktop/Chombo_3.2/releasedExamples/AMRPoisson/execPETSc/testPetscCompGrid.2d.*.hdf5 database", 0)
metadata = GetMetaData("localhost:/home/rochi/Desktop/Chombo_3.2/releasedExamples/AMRPoisson/execPETSc/testPetscCompGrid.2d.*.hdf5 database", -1)
AddPlot("Mesh", "Mesh", 1, 0)
HideActivePlots()
AddPlot("Pseudocolor", "phi1", 1, 0)
DrawPlots()
TimeSliderNextState()
# The AnimationPlay RPC is not supported in the VisIt module so it will not be logged.
metadata = GetMetaData("localhost:/home/rochi/Desktop/Chombo_3.2/releasedExamples/AMRPoisson/execPETSc/testPetscCompGrid.2d.*.hdf5 database", -1)
AddPlot("Subset", "Mesh", 1, 0)
SubsetAtts = SubsetAttributes()
SubsetAtts.colorType = SubsetAtts.ColorBySingleColor  # ColorBySingleColor, ColorByMultipleColors, ColorByColorTable
SubsetAtts.colorTableName = "Default"
SubsetAtts.invertColorTable = 0
SubsetAtts.legendFlag = 0
SubsetAtts.lineWidth = 1
SubsetAtts.singleColor = (0, 0, 0, 255)
SubsetAtts.SetMultiColor(0, (255, 0, 0, 255))
SubsetAtts.subsetNames = ("Whole mesh (Mesh)")
SubsetAtts.opacity = 1
SubsetAtts.wireframe = 1
SubsetAtts.drawInternal = 0
SubsetAtts.smoothingLevel = 0
SubsetAtts.pointSize = 0.05
SubsetAtts.pointType = SubsetAtts.Point  # Box, Axis, Icosahedron, Octahedron, Tetrahedron, SphereGeometry, Point, Sphere
SubsetAtts.pointSizeVarEnabled = 0
SubsetAtts.pointSizeVar = "default"
SubsetAtts.pointSizePixels = 2
SetPlotOptions(SubsetAtts)
DrawPlots()
# MAINTENANCE ISSUE: SetSuppressMessagesRPC is not handled in Logging.C. Please contact a VisIt developer.
SaveSession("/home/rochi/.visit/crash_recovery.27697.session")
# MAINTENANCE ISSUE: SetSuppressMessagesRPC is not handled in Logging.C. Please contact a VisIt developer.
# MAINTENANCE ISSUE: SetSuppressMessagesRPC is not handled in Logging.C. Please contact a VisIt developer.
SaveSession("/home/rochi/.visit/crash_recovery.27697.session")
# MAINTENANCE ISSUE: SetSuppressMessagesRPC is not handled in Logging.C. Please contact a VisIt developer.
# MAINTENANCE ISSUE: SetSuppressMessagesRPC is not handled in Logging.C. Please contact a VisIt developer.
SaveSession("/home/rochi/.visit/crash_recovery.27697.session")
# MAINTENANCE ISSUE: SetSuppressMessagesRPC is not handled in Logging.C. Please contact a VisIt developer.
