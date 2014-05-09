-module(kafkerl).
-author('hernanrivasacosta@gmail.com').

-export([start/0, start/2]).

start() ->
  application:load(kafkerl),
  application:start(kafkerl).

start(_StartType, _StartArgs) ->
  kafkerl_sup:start_link().