# Syncing TWRP sources

```bash
mkdir ~/TWRP
cd ~/TWRP

CORES_USED=$(nproc --all)
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-4.4-deprecated
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$CORES_USED

git clone https://github.com/TriDiscord/twrp_device_samsung_j1pop3g.git device/samsung/j1pop3g
git clone https://github.com/TriDiscord/android_kernel_samsung_j1pop3g.git kernel/samsung/j1pop3g
```

This *WILL* use all cores to sync by default, but you can modify the `CORES_USED` variable if needed.
