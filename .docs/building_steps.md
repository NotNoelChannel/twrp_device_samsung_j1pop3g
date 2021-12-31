# Building TWRP for the Samsung Galaxy J1 ace DUOS

## Building Steps

First, [sync up](sync_sources.md).

```bash
cd ~/TWRP
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch omni_j1pop3g-eng
mka recoveryimage
```

## Generated Files

- `recovery.img` *(optional)*
- **`recovery.tar`** *(recommended)*
