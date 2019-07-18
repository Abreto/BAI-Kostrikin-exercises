TEX=xelatex
OUTPUT_NAME=BAI-exercises

ENTRYPOINT_NAME=main
ENTRYPOINT=$(ENTRYPOINT_NAME).tex
SRC=$(ENTRYPOINT)

TARGET=$(ENTRYPOINT_NAME).pdf
OUTPUT=$(OUTPUT_NAME).pdf

.PHONY: all install clean

all: $(TARGET)

$(TARGET): $(SRC)
	$(TEX) $(ENTRYPOINT)
	$(TEX) $(ENTRYPOINT)

install: $(TARGET)
	cp $(TARGET) $(OUTPUT)

clean:
	-rm $(ENTRYPOINT_NAME).{aux,lof,log,lot,fls,out,toc,fmt,fot,pdf}
