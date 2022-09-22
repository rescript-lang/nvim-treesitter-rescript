
.PHONY: pull
pull:
	@if [ -z "$${TS_REASON_DIR}" ]; then \
	    echo "Environment variable TS_REASON_DIR not set"; \
	    exit 1; \
	fi
	cp -R ${TS_REASON_DIR}/{binding.gyp,Cargo.toml,grammar.js,bindings/,src/} tree-sitter-reason/
	# cp ${TS_REASON_DIR}/queries/* queries/reason/
