install:
	echo "⚠️  Assuming you have Node.JS and NPM installed..."
	npm install cypress

clean:
	rm -rf assets

test: clean
	npx cypress run

test-iterative: clean
	npx cypress open
