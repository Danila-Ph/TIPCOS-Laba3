function [x,t] = gen_sig(Fs,om1,om2,om3,om4,fi1,fi2,fi3,fi4,amp1,amp2,amp3,amp4)
%GEN_SIG генерирует сигнал, состо€щий из суммы синусоид
%fi should be in degrees

t = 0:1/Fs:1;
fi1 = fi1*(pi/180); fi2 = fi2*(pi/180); fi3 = fi3*(pi/180); fi4 = fi4*(pi/180);
x = amp1*sin(2*pi*om1*t + fi1) + amp2*sin(2*pi*om2*t + fi2) + amp3*sin(2*pi*om3*t + fi3) + amp4*sin(2*pi*om4*t + fi4);
end

