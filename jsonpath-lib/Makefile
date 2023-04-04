CC = gcc
CFLAGS = -gmodules -x c -std=gnu17 -I../src/include -Os -fdata-sections -ffunction-sections
LDFLAGS = -L../src/backend -L../src/common -L../src/port -lpostgres -lpgcommon_shlib -lpgport_shlib -lz -Wl,-dead_strip
TARGET = jsonpath_parse
SRCS = main.c cJSON.c

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(TARGET)
