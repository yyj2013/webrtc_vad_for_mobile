rm -rf obj
rm -rf ../../output
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk

mkdir ../../output
mv obj/local/* ../../output

mkdir ../../output/include
cp ../../webrtc/typedefs.h ../../output/include
cp ./webrtc_vad.h ../../output/include

rm -rf obj

cd ../../output

echo "Install Success, output path is `pwd`"
