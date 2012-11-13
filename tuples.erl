X = 10, Y = 4.
% 4

Point = {X,Y}.
% {10,4}

Point = {4,5}.
% {4,5}

{X,Y} = Point.
% {4,5}

X.
% 4

{X,_} = Point.
% {4,5}

{_,_} = {4,5}.
% {4,5}

{_,_} = {4,5,6}.
% ** exception error: no match of right hand side value {4,5,6}

Temperature = 23.213.
% 23.213

PreciseTemperature = {celsius, 23.213}.
% {celsius,23.213}

{kelvin, T} = PreciseTemperature.
% ** exception error: no match of right hand side value {celsius,23.213}

{point, {X,Y}}.
% {point,{4,5}}




