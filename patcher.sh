#!/bin/bash

ROOT="${PWD}"

REPOSITORIES=(
    'bionic'
    'build/kati'
    'build/make'
    'build/soong'
    'cts'
    'external/selinux'
    'frameworks/av'
    'frameworks/native'
    'frameworks/opt/net/wifi'
    'hardware/interfaces'
    'hardware/libhardware'
    'packages/services/Telephony'
    'system/bt'
    'system/core'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
