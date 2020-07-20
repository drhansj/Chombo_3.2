# Visit 3.1.2 log file
ScriptVersion = "3.1.2"
if ScriptVersion != Version():
    print "This script is for VisIt %s. It may not work with version %s" % (ScriptVersion, Version())
ShowAllWindows()
OpenDatabase("localhost:/home/rochi/Desktop/Chombo_3.2/releasedExamples/Particles/AMRPIC/exec/plt*.hdf5 database", 0)
metadata = GetMetaData("localhost:/home/rochi/Desktop/Chombo_3.2/releasedExamples/Particles/AMRPIC/exec/plt*.hdf5 database", -1)
AddPlot("Mesh", "Mesh", 1, 0)
HideActivePlots()
AddPlot("Pseudocolor", "rhs", 1, 0)
DrawPlots()
TimeSliderNextState()
TimeSliderNextState()
TimeSliderNextState()
# The AnimationPlay RPC is not supported in the VisIt module so it will not be logged.
# The AnimationStop RPC is not supported in the VisIt module so it will not be logged.
TimeSliderNextState()
TimeSliderNextState()
# The AnimationPlay RPC is not supported in the VisIt module so it will not be logged.
# The AnimationStop RPC is not supported in the VisIt module so it will not be logged.
SetActivePlots((0, 1))
SetActivePlots((0, 1))
SetActivePlots(0)
SetActivePlots((0, 1))
SetActivePlots((0, 1))
SetActivePlots(1)
