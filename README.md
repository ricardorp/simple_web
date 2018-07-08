simple_web
=====

Simplest Erlang+cowboy application. Created to get IntelliJ Erlang
plugin correctly configured so I can debug directly from the IDE. That's
the reason why both ```.idea``` directory and ```simple_web.iml``` file
are included.

How I did configure Intellij
----------------------------
    $ rebar3 --version
    $ rebar 3.6.1 on Erlang/OTP 20 Erts 9.2
    $ rebar3 new app simple_web

1. Add cowboy dependency to ```rebar.config```
2. Import project (as rebar project)
3. Check Erlang compiler settings:
    1. Compile project with rebar
    2. Add debug info.
4. Check project structure (Modules and paths, changed output directories)
5. Build project. Build -> Build project.
6. Edit ```simple_web.app.src```
7. Edit ```simple_web_app.erl```
8. Add ```hello_handler.erl``` file

Build
-----

    $ rebar3 compile

Also available relx configuration:

    $ rebar3 release

And prod profile:

    $ rebar3 as prod release

Run
---
    $ rebar3 shell

or

    $ ./_build/default/rel/simple_web/bin/simple_web console

or

    $ ./_build/prod/rel/simple_web/bin/simple_web console
