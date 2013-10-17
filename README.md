# Hello-JNI-Gradle

## What
This is an example of how to build NDK projects with Gradle using a simple bash script to wrap calls to `ndk-build`. 

## Why
The Android gradle plugin does not yet provide NDK integration, so here we are. See discussion on [StackOverflow](http://stackoverflow.com/questions/16667903/android-studio-gradle-and-ndk).

## How

### Importing Project
In Android Studio, Import Project. Select "Use auto-import" and "Use default gradle wrapper". The wrapper specifies the gradle distribution to use in `./gradle/gradle-wrapper.properties`.

### Building NDK Files
Once the project is imported, simply use `jni/ndk-build.sh` in place of `ndk-build`. This script runs `ndk-build`, and then converts all resulting shared libraries (*.so) to .jars and copies them to the libs folder. Our `build.gradle` file includes a dynamic dependency on all .jars in libs/, so it should just work.

