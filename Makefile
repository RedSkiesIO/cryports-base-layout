.PHONY: dbuild-cryptos-baselayout-x8664
dbuild-cryptos-baselayout-x8664:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"

.PHONY: dbuild-cryptos-baselayout-armhf
dbuild-cryptos-baselayout-armhf:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"

.PHONY: dbuild-cryptos-baselayout-aarch64
dbuild-cryptos-baselayout-aarch64:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"
