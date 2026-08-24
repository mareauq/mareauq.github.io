RUBY_API_VERSION := $(shell ruby -e 'print Gem.ruby_api_version')
USER_BUNDLE := $(HOME)/.local/share/gem/ruby/$(RUBY_API_VERSION)/bin/bundle
BUNDLE := $(if $(wildcard $(USER_BUNDLE)),$(USER_BUNDLE),bundle)
BUNDLE_VERSION := _2.2.26_

.PHONY: install build serve

install:
	$(BUNDLE) $(BUNDLE_VERSION) config set path vendor/bundle
	$(BUNDLE) $(BUNDLE_VERSION) install

build:
	$(BUNDLE) $(BUNDLE_VERSION) exec jekyll build

serve:
	$(BUNDLE) $(BUNDLE_VERSION) exec jekyll serve --host 127.0.0.1 --port 4000
