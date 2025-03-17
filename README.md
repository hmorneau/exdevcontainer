# Elixir Dev Container Setup

This repository contains a development container setup for Elixir projects. It includes all necessary configurations and dependencies to get started with Elixir development using Visual Studio Code and Docker.

## Features

- Elixir 1.18
- Phoenix Framework
- PostgreSQL
- Observer (with VNC support)
- Zsh and Oh My Zsh
- Docker extension to manage docker on your host
- Additional tools: inotify-tools, postgresql-client, npm, docker.io, iputils-ping, dnsutils, telnet, libwxgtk3.2-dev, libgtk-3-0, x11-xserver-utils, chromium, chromium-driver, direnv, node.js, watchman

## Setup

Add the .devcontainer directory to your Elixir project. The directory should contain the following files:
- `devcontainer.json`
- `Dockerfile`
- `docker-compose.yml`

See IEX Configuration section for details on the `iex.exs` file.

When prompted by Visual Studio Code, reopen the project in the container.

## IEx Configuration

The `iex.exs` file is configured to make the Observer tool available in development mode. The configuration is as follows:

```elixir
# Make observer available in development
if Mix.env() == :dev do
  Mix.ensure_application!(:observer)
end
```

## Observer
To use Observer, follow these steps:

in IEx run :observer.start()

Connect your browser to the VNC server at http://localhost:6080/ and click on "Connect".

## Observer Warnings

When using Observer, you might encounter the following warning:

```
[notice] wx: GTK: State 0 for context 0xfffeb06c5160 doesn't match state 128 set via gtk_style_context_set_state ()
```

Despite this warning, Observer should still work as expected.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.