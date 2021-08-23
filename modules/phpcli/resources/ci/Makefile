ifndef _CI_IMAGE_CI_DIR
    $(error _CI_IMAGE_CI_DIR is not set)
endif
MAKEFLAGS=--no-keep-going --warn-undefined-variables --no-print-directory ## для вложенных вызовов make
.PHONY: *
.DEFAULT_GOAL := help
ALL_TARGETS=composer_enable
.SILENT: $(ALL_TARGETS)

composer_enable: ## подготовить служебные директории composer для работы
	bash -x "${_CI_IMAGE_CI_DIR}/composer/enable.sh"
help: ## показать справку по Makefile
	@ printf "\033[33m%s:\033[0m\n" 'Доступные команды'
	@ awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[32m%-18s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
