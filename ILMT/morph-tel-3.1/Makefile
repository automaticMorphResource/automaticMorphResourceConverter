#
# Makefile -- compiling/copying/install/uninstall the module
#

PREFIX = $(setu)

# Program and Data files and directories.
DEST_PROG_DIR = $(PREFIX)/src/sl/morph/tel
DEST_BIN_DIR = $(PREFIX)/bin/sl/morph/tel
DEST_PROG_DIR2 = $(PREFIX)/src/sl/morph
DEST_DATA_DIR = $(PREFIX)/data_src/sl/morph/tel
DEST_BIN_DATA_DIR = $(PREFIX)/data_bin/sl/morph/tel

#VER = 2.0 
CPFR = cp -fr

# make all -- make programs, data, library, documentation, etc.

all:install-src install-data

install-src:
	mkdir -p $(DEST_PROG_DIR)
	mkdir -p $(DEST_BIN_DIR)
	#$(CPFR) docs $(PREFIX)
	$(CPFR) src/sl/morph/tel/* $(DEST_PROG_DIR)
	$(CPFR) README.txt INSTALL.txt ChangeLog $(DEST_PROG_DIR)
	$(CPFR) docs remove_zwj.pl word-split.pl cat-change.pl morph_run.sh morph.sh morph.spec morph_test.sh tests $(DEST_BIN_DIR)
	cp Makefile.stage2 $(DEST_PROG_DIR2)/Makefile

	#cp -fr tests $(PREFIX)

install-data:
	mkdir -p $(DEST_DATA_DIR)
	mkdir -p $(DEST_BIN_DATA_DIR)
	cp -fr data_src/sl/morph/tel/* $(DEST_DATA_DIR)
	$(CPFR) data_bin/sl/morph/tel/rls $(DEST_PROG_DIR) 
#cp -fr data_src/sl/morph/tel/dict/ $(DEST_BIN_DATA_DIR)

# make compile -- Compiles the source code as well as the data
# compile: compile-exec compile-data

# make install -- Install what all needs to be installed, copying the files from the packages tree to systemwide directories.# it installs the engine and the corpus, dictionary, etc.


# remove the module files from sampark
clean:uninstall
uninstall:
	$(MAKE) -C  $(DEST_PROG_DIR) clean
	rm -fr $(DEST_PROG_DIR) $(DEST_DATA_DIR)

.PHONY: all clean install uninstall install-src install-data

