%% Copyright 2018 Alliance for Sustainable Energy, LLC
%
% Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
% and associated documentation files (the "Software"), to deal in the Software without restriction, 
% including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
% and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
% subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING 
% BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
% NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS, THE COPYRIGHT HOLDERS, THE UNITED STATES, 
% THE UNITED STATES DEPARTMENT OF ENERGY, OR ANY OF THEIR EMPLOYEES BE LIABLE FOR ANY CLAIM, 
% DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
%
% Author: Przemyslaw Koralewicz / NREL
% Date: 2017

figure('name', 'kpp6');

ax = [];
ax= [ax subplot(2,1,1)]; plot(comm.t_min, [ kpp6.soc ], 'LineWidth', 2); hold on; grid on;
    plot(comm.t_min, [ kpp6.lim ], 'r--', 'LineWidth', 2);
    set(gca,'XTick', [0:5:100]);
    title('ESS state of charge [kW]');
    legend(kpp6.legend_per_class);
ax= [ax subplot(2,1,2)]; 
    area(comm.t_min, [kpp6.d_cum_per_class]); hold on;grid on;
    %plot(comm.t_min, [kpp6.d_cum_total], 'LineWidth', 2);
    set(gca,'XTick', [0:5:100]);
    title('KPP6 summary values [$]');
    legend(kpp6.legend_per_class);
                                   

xlabel('time [min]');
linkaxes(ax,'x');