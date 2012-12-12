-module(translate_service).
-export([loop/0, translate/2]).

loop() ->

	receive
		{From, "casa"} ->
			From ! "house",
			loop();
		{From, "blanca"} ->
			From ! "white",
			loop();
		{From, _} ->
			From ! "Don't get your point..",
			loop()
end.

translate(To, Word) ->
	To ! {self(), Word},
	receive
		Translation -> Translation
end.


% usage:
% Translator = spawn(fun translate_service:loop/0).
% translate_service:translate(Translator, "casa").
% translate_service:translate(Translator, "blanca").
% translate_service:translate(Translator, "asdasd").
