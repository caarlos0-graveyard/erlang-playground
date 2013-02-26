-module(genders).
-export([get/1]).

get(f) -> "Female";
get(_) -> "Male".
