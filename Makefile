CXXFLAGS += -fPIC

.PHONY: clean

jaeckel.dylib: erf_cody.o normaldistribution.o rationalcubic.o lets_be_rational.o
	$(LINK.cc) -shared $^ $(LOADLIBS) $(LDLIBS) -o $@

clean:
	-rm -f *.o *.dylib
