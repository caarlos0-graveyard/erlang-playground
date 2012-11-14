[2*N || N <- [1,2,3,4,5,6,7,8,9,10]].
% [2,4,6,8,10,12,14,16,18,20]

[X || X <- [1,2,3,4,5,6,7,8,9,10], X rem 2 =:= 0].
% [2,4,6,8,10]



RestaurantMenu = [{steak, 5.99}, {beer, 3.99}, {poutine, 3.50}, {kitten, 20.99}, {water, 0.00}].
% [{steak,5.99},
%  {beer,3.99},
%  {poutine,3.5},
%  {kitten,20.99},
%  {water,0.0}]

[{Item, Price*1.07} || {Item,Price} <- RestaurantMenu, Price >= 3, Price =< 10].
% [{steak,6.409300000000001},{beer,4.2693},{poutine,3.745}]

% List Comprehension Erlang Pattern
% NewList = [Expression || Pattern <- List, Condition1, Condition2, ... ConditionN].



[X+Y || X <- [1,2], Y <- [2,3]].
% [3,4,4,5]



Weather = [{toronto, rain}, {montreal, storms}, {london, fog}, {paris, sun}, {boston, fog}, {vancounver, snow}].                          
% [{toronto,rain},
%  {montreal,storms},
%  {london,fog},
%  {paris,sun},
%  {boston,fog},
%  {vancounver,snow}]

FoggyPlaces = [X || {X, fog} <- Weather].
% [london,boston]

