set termoption enhanced

set title   "Title test^a \alpha $\alpha$ {\LaTeX\ -- $ \gamma $}" font "Serif, 18"
set xlabel  "Month"
set ylabel  "Precipitation (mm)"
set xrange  [0.5: 12.5]
set xtics   1,1,12
set key
set pointintervalbox 2

plot    "a.dat"   using 1:2 with linespoints \
                        linecolor "#FF7800" linewidth 2 pointtype 7 pointsize 0.75 pointinterval -1 \
                        title "City A",\
        "a.dat"   using 1:3 with linespoints \
                        linecolor "#00A0DC" linewidth 2 pointtype 7 pointsize 0.75 pointinterval -1 \
                        title "City B",

set output
pause (-1)