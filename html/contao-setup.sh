#!/usr/bin/env bash

# Contao Core releases: https://github.com/contao/core/releases
# Contao Check releases: https://github.com/contao/check/releases
CONTAO_CORE_VERSION="3.5.28"
CONTAO_CHECK_VERSION="12.0"

# Install Contao
wget https://github.com/contao/core/releases/download/${CONTAO_CORE_VERSION}/contao-${CONTAO_CORE_VERSION}.tar.gz
tar -xzf contao-${CONTAO_CORE_VERSION}.tar.gz
rm -f contao-${CONTAO_CORE_VERSION}.tar.gz
cd contao-${CONTAO_CORE_VERSION}
cp -rf . ..
cd ..
rm -rf contao-${CONTAO_CORE_VERSION}

# Install Contao Check
wget https://github.com/contao/check/archive/${CONTAO_CHECK_VERSION}.tar.gz
tar -xzf ${CONTAO_CHECK_VERSION}.tar.gz
rm -rf ${CONTAO_CHECK_VERSION}.tar.gz
cd check-${CONTAO_CHECK_VERSION}
cp -rf . ..
cd ..
rm -rf check-${CONTAO_CHECK_VERSION}

# Rename .htaccess
cp .htaccess.default .htaccess
