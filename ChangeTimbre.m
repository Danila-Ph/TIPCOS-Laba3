function [ M_out ] = ChangeTimbre( M_in, alpha )

F_Nyquist = length(M_in)-1;
freq_in = 0:F_Nyquist;
freq_out= alpha*freq_in;
M_out = interp1(freq_in, M_in, freq_out,'line');
M_out(freq_out>F_Nyquist) = 0;

end

