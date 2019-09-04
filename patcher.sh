#!/bin/bash

ROOT="${PWD}"

REPOSITORIES=(
    'cts'
    'packages/services/Telephony'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
