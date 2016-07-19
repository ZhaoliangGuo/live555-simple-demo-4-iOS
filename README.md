# live555-simple-demo-4-iOS

## Brief 

- live555-build-4-iOS	
  Build the live555(Base on live555 version 20160626) to an static library named `liblive555.a`.
  
- live555-simple-demo-4-iOS
  The simplest rtsp client example that can open a valid rtsp url(using `liblive555.a`) in Xcode.
  
## Instruction 
### Step 1: 
After runing the project int the `Simulator` mode and the `Generic iOS Device`, a universal (multi-architec-
ture) file: `liblive555.a` will be built by runing a script using `lipo -create`. All this happen automaticly, you don't have to execute 
the comand by hand.

