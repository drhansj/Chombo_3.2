# Visit 3.1.2 log file
ScriptVersion = "3.1.2"
if ScriptVersion != Version():
    print "This script is for VisIt %s. It may not work with version %s" % (ScriptVersion, Version())
ShowAllWindows()
OpenDatabase("localhost:/home/rochi/Desktop/Chombo_3.2/lib/test/ParticleTools/pout.* database", 0)
