# live555-build-4-iOS	
  Build the live555(Base on live555 version 20160626) to an static library named `liblive555.a`.
  
  - **Step 1: Open the `live555.xcodeproj` in Xcode**.

  - **Step 2: Set iOS SDK Version**.  
    
    Edit the `IOS_VERSION` in `config.iphoneos` file, you can change it according to your iOS SDK Version.  
    ```
    IOS_VERSION = 10.0
    ```

  - **Step 3: Build the target in `Simulator` mode, then in the `Generic iOS Device` mode**.  
    - Select any simulator, e.g. `iPhone 6 Plus`, then click the `Build and Run` Button.
    - Select the `Generic iOS Device`, then click the `Build and Run` Button.
    
      After that, a universal (multi-architecture) file named `liblive555.a` will be generated in the `output` directory.  
      Also, all the headers needed will be copy to `/output/include`.`.     
      **All this happen automaticly, you don't have to run any comand by hand**.    
  
      Architectures in this fat file `liblive555.a` are: `i386` `x86_64` `armv7` `arm64`, so `liblive555.a` can be used in any `Simulator` or `Generic iOS Device`.
      


  - **Step 4: Use the `liblive555.a`**.  
    Copy `liblive555.a` and `include` directory to your project.
    Then you can use it!!!

# live555-simple-demo-4-iOS

  The simplest rtsp client example that can open a valid rtsp url(using `liblive555.a`) in Xcode.


