-module y.

-behaviour supervisor.

-record a_record, {a_field = x:a_function()}.

-export [init/1, unused_export/0].

init(_) ->
    ARecord = #a_record{a_field = not_default},
    {ok, {#{}, [#{id => x, start => {this, doesnt_matter, [ARecord]}}]}}.

unused_export() -> unused.
