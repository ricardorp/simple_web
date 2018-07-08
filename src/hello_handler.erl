%%%-------------------------------------------------------------------
%%% @author richieva
%%% @copyright (C) 2018, VA
%%% @doc
%%%
%%% @end
%%% Created : 08. jul 2018 10:57
%%%-------------------------------------------------------------------
-module(hello_handler).
-behaviour(cowboy_handler).
-author("richieva").

%% API
-export([init/2]).

init(Req0, State) ->
    Method = cowboy_req:method(Req0),
    io:format("Received request ~s~n", [Method]),
    Req = cowboy_req:reply(200,
        #{<<"content-type">> => <<"text/plain">>},
        <<"Hello Erlang!">>,
        Req0),
    {ok, Req, State}.

