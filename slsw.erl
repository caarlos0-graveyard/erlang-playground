%
% seven languages in seven weeks
%
% self studies
%
-module(slsw).
-export([count_until/1]).
-export([count_words/1]).
-export([print_msg/1]).
-export([lang/2]).
-export([full_price/1]).

% day 1, ex 1
list_length([]) -> 0;
list_length(String) ->
	[_ | Tail] = String,
	1 + list_length(Tail).

count_words(Text) ->
	{_, R} = re:split(Text, " "),
	list_length(R).


% day 1, ex 2
count_until(Val, Max) when Val < Max -> 
	io:fwrite("~w~n", [Val]),
	count_until(Val + 1, Max);
count_until(_, Max) ->
	io:fwrite("~w~n", [Max]).

count_until(Max) ->
	count_until(0, Max).



% day 2, ex 3
print_msg(success) -> io:fwrite("Success~n");
print_msg({error, Message}) ->
	io:fwrite("sir... we got an error: ~s~n", [Message]).

% day 2, ex 1
% test list: Langs = [{ruby, 'oo lang'}, {erlang, 'functional lang'}, {haskell, 'pure functional lang'}]
lang(Tuples, Key) ->
	[TupleValue || {TupleKey, TupleValue} <- Tuples, (Key == TupleKey)].

% day 2, ex 2
% test list: List = [{banana,20,0.1},{abacaxi,10,5},{amendoim,50,10}]
full_price(List) ->
	[{Name, Price*Quantity} || {Name, Quantity, Price} <- List].

% ex 3 is tooo long, lazyyy wom


