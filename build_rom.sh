#!/bin/bash

#set -e

clear

export TZ=Asia/Jakarta

#crave clone destroy -y /crave-devspaces/vos

#crave clone create --projectID 35 /crave-devspaces/vos

#cd /crave-devspaces/vos

rm -rf .repo/local_manifests; \
repo init -u https://github.com/VoltageOS/manifest.git -b 16.2 --git-lfs; \
git clone --depth=1 https://github.com/Tiktodz/local_manifesf -b vos .repo/local_manifests; \
/opt/crave/resync.sh; \
. build/envsetup.sh; \
brunch X00TD
