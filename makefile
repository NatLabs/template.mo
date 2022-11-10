test: 
	$(shell vessel bin)/moc -r $(shell vessel sources) -wasi-system-api ./tests/*.Test.mo

docs: src/**/*.mo
	$(shell vessel bin)/mo-doc
	$(shell vessel bin)/mo-doc --format plain