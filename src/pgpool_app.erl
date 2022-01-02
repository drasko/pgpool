%%%-------------------------------------------------------------------
%% @doc pgpool public API
%% @end
%%%-------------------------------------------------------------------

-module(pgpool_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    pgpool_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
