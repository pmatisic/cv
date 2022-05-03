OUTPUT_DIR=_build
FILE=main

build:
	sh build.sh $(OUTPUT_DIR) $(FILE)

clean:
	rm -rf $(OUTPUT_DIR)
	rm -f $(FILE).pdf
	rm -f main.bcf
	rm -f main.run.xml
