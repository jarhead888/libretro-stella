MODULE := src/emucore

MODULE_OBJS := \
	src/emucore/AtariVox.o \
	src/emucore/Bankswitch.o \
	src/emucore/Booster.o \
	src/emucore/Cart.o \
	src/emucore/CartARM.o \
	src/emucore/CartCreator.o \
	src/emucore/CartDetector.o \
	src/emucore/CartEnhanced.o \
	src/emucore/Cart0840.o \
	src/emucore/Cart0FA0.o \
	src/emucore/Cart2K.o \
	src/emucore/Cart3E.o \
	src/emucore/Cart3EPlus.o \
	src/emucore/Cart3EX.o \
	src/emucore/Cart3F.o \
	src/emucore/Cart4A50.o \
	src/emucore/Cart4K.o \
	src/emucore/Cart4KSC.o \
	src/emucore/CartAR.o \
	src/emucore/CartBUS.o \
	src/emucore/CartCDF.o \
	src/emucore/CartCM.o \
	src/emucore/CartCTY.o \
	src/emucore/CartCV.o \
	src/emucore/CartDPC.o \
	src/emucore/CartDPCPlus.o \
	src/emucore/CartE0.o \
	src/emucore/CartE7.o \
	src/emucore/CartEF.o \
	src/emucore/CartEFSC.o \
	src/emucore/CartBF.o \
	src/emucore/CartBFSC.o \
	src/emucore/CartDF.o \
	src/emucore/CartDFSC.o \
	src/emucore/CartF0.o \
	src/emucore/CartF4.o \
	src/emucore/CartF4SC.o \
	src/emucore/CartF6.o \
	src/emucore/CartF6SC.o \
	src/emucore/CartF8.o \
	src/emucore/CartF8SC.o \
	src/emucore/CartFA.o \
	src/emucore/CartFA2.o \
	src/emucore/CartFC.o \
	src/emucore/CartFE.o \
	src/emucore/CartGL.o \
	src/emucore/CartMDM.o \
	src/emucore/CartMVC.o \
	src/emucore/CartSB.o \
	src/emucore/CartTVBoy.o \
	src/emucore/CartUA.o \
	src/emucore/CartWD.o \
	src/emucore/CartX07.o \
	src/emucore/CompuMate.o \
	src/emucore/Console.o \
	src/emucore/Control.o \
	src/emucore/ControllerDetector.o \
	src/emucore/DispatchResult.o \
	src/emucore/Driving.o \
	src/emucore/EventHandler.o \
	src/emucore/EmulationTiming.o \
	src/emucore/EmulationWorker.o \
	src/emucore/FrameBuffer.o \
	src/emucore/FBSurface.o \
	src/emucore/FSNode.o \
	src/emucore/Genesis.o \
	src/emucore/GlobalKeyHandler.o \
	src/emucore/Joy2BPlus.o \
	src/emucore/Joystick.o \
	src/emucore/Keyboard.o \
	src/emucore/KidVid.o \
	src/emucore/Lightgun.o \
	src/emucore/MindLink.o \
	src/emucore/M6502.o \
	src/emucore/M6532.o \
	src/emucore/MT24LC256.o \
	src/emucore/MD5.o \
	src/emucore/OSystem.o \
	src/emucore/OSystemStandalone.o \
	src/emucore/Paddles.o \
	src/emucore/PlusROM.o \
	src/emucore/PointingDevice.o \
	src/emucore/ProfilingRunner.o \
	src/emucore/Props.o \
	src/emucore/PropsSet.o \
	src/emucore/QuadTari.o \
	src/emucore/SaveKey.o \
	src/emucore/Serializer.o \
	src/emucore/Settings.o \
	src/emucore/Switches.o \
	src/emucore/System.o \
	src/emucore/TIASurface.o \
	src/emucore/Thumbulator.o

MODULE_DIRS += \
	src/emucore

# Include common rules
include $(srcdir)/common.rules
