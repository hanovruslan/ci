MAKEFLAGS=--no-keep-going --warn-undefined-variables --no-print-directory ## для вложенных вызовов make
.PHONY: *
.DEFAULT_GOAL := help
ALL_TARGETS=interactive build run
.SILENT: $(ALL_TARGETS)
.RECIPEPREFIX +=

interactive: ## работать со сборкой вручную
    @ ./interactive.sh
build: ## собрать образы
    @ ./build.sh
run: ## запустить локально
    @ ./run.sh
help: ## показать справку по Makefile
    @ printf "\033[33m%s:\033[0m\n" 'Доступные команды'
    @ awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[32m%-18s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
