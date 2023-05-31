# Variables
JAVAC = javac
SRC_DIR = src
BUILD_DIR = build
CLASSPATH = .
SOURCES = $(shell find $(SRC_DIR) -type f -name '*.java')

# Rule: Build the Java project
all: $(BUILD_DIR)
	$(JAVAC) -cp $(CLASSPATH) -d $(BUILD_DIR) $(SOURCES)

# Create build directory
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Rule: Clean the build directory
clean:
	rm -rf $(BUILD_DIR)
