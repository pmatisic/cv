OUTPUT_DIR=_build
FILE=main

build:
	sh build.sh $(OUTPUT_DIR) $(FILE)

clean:
	rm -rf $(OUTPUT_DIR)
	rm -f $(FILE).pdf
	rm -f cv_7.bcf
	rm -f cv_7.run.xml
