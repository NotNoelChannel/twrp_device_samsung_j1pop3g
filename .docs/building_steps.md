# Building TWRP for the Samsung Galaxy J1 ace DUOS

## Building Steps

```bash
mkdir ~/TWRP
cd ~/TWRP
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-4.4-deprecated
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/TriDiscord/twrp_device_samsung_j1pop3g.git device/samsung/j1pop3g
git clone https://github.com/TriDiscord/android_kernel_samsung_j1pop3g.git kernel/samsung/j1pop3g
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch omni_j1pop3g-eng
mka recoveryimage
```

## Generated Files

- `recovery.img` *(optional)*
- **`recovery.tar`** *(recommended)*
