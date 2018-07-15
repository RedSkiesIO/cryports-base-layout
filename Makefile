.PHONY: dbuild-cryptos-baselayout-x8664
dbuild-cryptos-baselayout-x8664:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f -P"

.PHONY: dbuild-cryptos-baselayout-armhf
dbuild-cryptos-baselayout-armhf:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-baselayout-aarch64
dbuild-cryptos-baselayout-aarch64:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f -P"
