# live555-build-4-iOS	
  Build the live555(Base on live555 version 20160626) to an static library named `liblive555.a`.
  
  - Step 1: Open the `live555.xcodeproj` in Xcode.

  - Step 2: Set iOS SDK Version.  
    Edit the `IOS_VERSION` in `config.iphoneos` file, you can change it according to your iOS SDK Version.  
    ```
    IOS_VERSION = 10.0
    ```

  - Step 3: Build the target in `Simulator` mode, then in the `Generic iOS Device` mode.  
    - Select any simulator, e.g. `iPhone 6 Pluse`, then click the `Build and Run` Button.
    - Select the `Generic iOS Device`, then click the `Build and Run` Button.
    
      After that, a universal (multi-architec-ture) file: `liblive555.a` will be built by runing a script using `lipo -create`. All this happen automaticly, you don't have to execute the comand by hand.
      The `liblive555.a` will be generated in the `output` directory, this file can be used in any simulator or `Generic iOS Device`.
      Also, all the headers needed will be copy to `/output/include`.

  - Step 4: Use the `liblive555.a`.  
    Copy `liblive555.b` and `include` directory in the output directory to your project.
    Then you can use it!!!

# live555-simple-demo-4-iOS

  The simplest rtsp client example that can open a valid rtsp url(using `liblive555.a`) in Xcode.


