blink = code 
avrdude = avd
avr = a
gcc = g
atmega328p = cont
hex = h
elf = e
o = out
arduino = ard
sudo = su
c = ca
gcc = compile
p = pa
compile = com
mmcu = mm
clean = cln
ihex = i
objcopy = oc
flash = f

program : $(code).$(h)

	$(su) $(avd) -$(ca) $(ard) -$(pa) $(cont) -P /dev/ttyUSB0 -U $(f):w:$(code).$(h)

$(code).$(h) : $(com)

	$(a) -$(oc) -O $(i) $(code).$(e) $(code).$(h)

$(com) : $(code).$(out)

	$(a) -$(compile) -$(mm) = $(cont) -$(out) $(code).$(e) $(code).$(out)

$(code).$(out) : $(code).$(ca)

	$(a) -$(compile) -$(mm) = $(cont) -$(ca) $(code).$(ca) -$(out) $(code).$(out)

$(cln) :

	rm -f $(code).$(h) $(code).$(e) $(code).$(out)