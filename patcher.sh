#!/bin/bash

ROOT="${PWD}"

REPOSITORIES=(
    'art'
    'bionic'
    'build/kati'
    'build/make'
    'build/soong'
    'cts'
    'external/f2fs-tools'
    'external/selinux'
    'frameworks/av'
    'frameworks/native'
    'frameworks/opt/net/wifi'
    'hardware/interfaces'
    'hardware/libhardware'
    'packages/services/Telephony'
    'system/bt'
    'system/core'
    'system/vold'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
