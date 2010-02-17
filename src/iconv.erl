-module(iconv).

-on_load(load_nif/0).

-export([open/2, close/1, iconv/2]).

open(To, From) ->
  erlang:error(function_clause, [To, From]).

close(CD) ->
  erlang:error(function_clause, [CD]).

iconv(CD, Binary) ->
  erlang:error(function_clause, [CD, Binary]).

load_nif() ->
  Path = filename:join(code:priv_dir(iconverl), "iconv"),
  erlang:load_nif(Path, 0).
