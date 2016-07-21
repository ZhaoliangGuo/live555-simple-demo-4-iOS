# live555-build-4-iOS	
  **Build live555 to an static `fat` library named `liblive555.a`.   
  Architectures in `liblive555.a` are: `i386` `x86_64` `armv7` `arm64`.  
  `liblive555.a` can be used in any `Simulator` or `Generic iOS Device`**.
    
  *Base on live555 Version 20160626*. http://www.live555.com/liveMedia/
  
### Instructions.  
  
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
  
  - **Step 4: Use the `liblive555.a`**.  
    Copy `liblive555.a` and `include` directory to your project.
    Then you can use it!!!

# live555-simple-demo-4-iOS

  The simplest rtsp client example that can open a valid rtsp url(using `liblive555.a`) in Xcode.
  Find the function `- (int) PlayRTSP` in `ViewController.mm`, change `rtspURL` to a valid RTSP URL.  
  ```
  char rtspURL[512] = "rtsp://192.168.1.101:8554/test.mkv";
  ```
  Then run the project, the result will be shown in the console.
  


