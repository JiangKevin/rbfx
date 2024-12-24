clear
reset
# 
export ANDROID_HOME=/Users/kevin.jiang/Dev/tools/AndroidSdk
export ANDROID_NDK=/Users/kevin.jiang/Dev/tools/AndroidSdk/ndk/26.1.10909125
# # 
# cd android
# # 
# gradle build
# rm -rf build/*
cd build
cmake ..  -DANDROID_STL=c++_static -DANDROID_PLATFORM=android-21 -DANDROID=1 -DBUILD_SHARED_LIBS=OFF -DURHO3D_SAMPLES=OFF -DURHO3D_PLAYER=OFF -URHO3D_EDITOR=OFF -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake -DANDROID_NDK=$ANDROID_NDK
# 
make
make install ./install