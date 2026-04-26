build-module-zip: create-env build-assets build-zip

build-zip:
	rm -rf rpairme.zip
	cp -Raf $(PWD) /tmp
	rm -rf /tmp/rpairme/assets/cache
	rm -rf /tmp/rpairme/_dev/node_modules
	rm -rf /tmp/rpairme/_dev/webpack/.env
	rm -rf /tmp/rpairme/.github
	rm -rf /tmp/rpairme/.gitignore
	rm -rf /tmp/rpairme/.php-cs-fixer.cache
	rm -rf /tmp/rpairme/.git
	mv -v /tmp/rpairme $(PWD)/rpairme
	cd rpairme && zip -r ../rpairme.zip .
	rm -rf $(PWD)/rpairme

create-env:
	cp -v $(PWD)/_dev/webpack/.env-example $(PWD)/_dev/webpack/.env

build-assets:
	cd _dev && . ${HOME}/.nvm/nvm.sh && nvm install && yarn install && yarn build

