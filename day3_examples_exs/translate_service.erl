-module(translate_service).
-export([loop/0, translate/2, watch/0]).

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
			exit("Adiós muchacho!")
end.

translate(To, Word) ->
	To ! {self(), Word},
	receive
		Translation -> Translation
end.


watch() ->
	process_flag(trap_exit, true),
	receive
		new ->
			io:format("~nCreating new etc..~n"),
			register(translator, spawn_link(fun loop/0)),
			watch();
		{'EXIT', From, Reason} ->
			io:format("~nTranslator ~p dies with the reason ~p", [From, Reason]),
			io:format("~nRestarting this crap..."),
			self() ! new,
			watch()
end.

%
% Usage
%
% Translator = spawn(fun translate_service:watch/0).
% Translator ! new.
% translate_service:translate(translator, "casa").
% translate_service:translate(translator, "blanca").
% translate_service:translate(translator, "asdasd").
