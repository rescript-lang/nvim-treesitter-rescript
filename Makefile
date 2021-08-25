
.PHONY: pull
pull:
	@if [ -z "$${TS_RESCRIPT_DIR}" ]; then \
	    echo "Environment variable TS_RESCRIPT_DIR not set"; \
	    exit 1; \
	fi
	cp -R ${TS_RESCRIPT_DIR}/{binding.gyp,Cargo.toml,grammar.js,bindings/,src/} tree-sitter-rescript/
	cp ${TS_RESCRIPT_DIR}/queries/* queries/rescript/
