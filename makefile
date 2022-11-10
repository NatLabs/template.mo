.PHONY: test docs

test: 
	$(shell vessel bin)/moc -r $(shell vessel sources) -wasi-system-api ./tests/*.Test.mo

docs: 
	$(shell vessel bin)/mo-doc
	$(shell vessel bin)/mo-doc --format plain