all: npm less jshint minify

npm:
	@echo "`date`\tInstalling and updating required npm pakages"
	@npm install
	@npm update

jshint:
	@echo "`date`\tRunning JSHint"
	@node_modules/.bin/jshint --config test/jshint.json ./test/* ./js/*

