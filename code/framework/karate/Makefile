install:
	echo "⚠️  Assuming you have Java 8 or above installed..."
	curl -L https://dl.bintray.com/ptrthomas/karate/karate-0.9.5.jar -o karate.jar

clean:
	rm -rf target/

test: clean
	java -jar karate.jar --threads=4 src/test/karate --clean
