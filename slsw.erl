-module(slsw).
-export([lang/2]).
-export([full_price/1]).

% day 1 - write someday

% day 2, ex 1
% test list: Langs = [{ruby, 'oo lang'}, {erlang, 'functional lang'}, {haskell, 'pure functional lang'}]
lang(Tuples, Key) -> [TupleValue || {TupleKey, TupleValue} <- Tuples, (Key == TupleKey)].

% day 2, ex 2
% test list: List = [{banana,20,0.1},{abacaxi,10,5},{amendoim,50,10}]
full_price(List) -> [{Name, Price*Quantity} || {Name, Quantity, Price} <- List].

% ex 3 is tooo long, lazyyy wom


% day 3 -
