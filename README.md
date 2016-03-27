<p align="center">
![cmlogo](https://llaverotecnologico.files.wordpress.com/2015/06/wpid-wp-1435340344758.jpeg)
<p align="center">
#CyanogenMod 12.1 Device Configuration for the Samsung Galaxy Core Prime (G360T1).
Warning: Currently, this configuration allows CyanogenMod to build, CyanogenMod does **not** boot past the boot animation. We are working on fixing that.

In order to build CyanogenMod yourself, you must first setup a build environment. Instructions to do that can be found [here](https://source.android.com/source/initializing.html).


Once you setup a build environment, create a working directory. Ideally, you want to run this command:
> mkdir CM-12.1 && cd CM-12.1

Next, initialize the CyanogenMod repo in your working directory using this command:
> repo init -u https://github.com/CyanogenMod/android.git -b cm-12.1

Next, initialize the device repositories, using this command:
> curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/PlatinumMaster/android_local_manifest/cm-12.1/local_manifest.xml

Finally, to start syncing, run this command:
> repo sync


Once you finished syncing, to build CyanogenMod, run these commands:
> . build/envsetup.sh && brunch cm_cprimeltemtr-userdebug
