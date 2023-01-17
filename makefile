.PHONY: test compile-tests docs no-warn

test: 
	$(shell vessel bin)/moc -r $(shell mops sources) -wasi-system-api ./tests/*.Test.mo

compile-tests: 
	bash compile-tests.sh $(file)

no-warn:
	find src -type f -name '*.mo' -print0 | xargs -0 $(shell vessel bin)/moc -r $(shell mops sources) -Werror -wasi-system-api

docs: 
	$(shell vessel bin)/mo-doc
	$(shell vessel bin)/mo-doc --format plain