
list="Makefile main.tex main.bib elsart.cls section-front.tex section-introduction.tex fig-nethead.eps section-ecology.tex fig-cmake.eps fig-swig.eps fig-family.eps section-driver.tex fig-devices1.eps fig-devices2.eps fig-devices3.eps section-network.tex fig-ports.eps section-robotcub.tex fig-icub.eps layers.eps sim-webot-detail.eps sim-ode-wide.eps sim-ode-left.eps sim-ode-right.eps sim-ode-knock.eps section-conclusions.tex section-ack.tex"

for f in $list; do
    if [ ! -e $f ]; then
	echo Fetch $f
	cp ../cvs/$f .
    fi
done

