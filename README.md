# Pulse

Pulse is a BPM counter prototype written in Elm. After writing a very basic Elm component for [finding car classes](https://github.com/skovmand/fh4-car-class-finder) in Forza Horizon 4 (using the Elm `sandbox` application model), I wanted to explore the `element` application model, including commands and subscriptions.

At the same time, I am a real newbie at both Tailwind CSS, Flexbox and animations. I wanted to include these into the project as well.


## Setting up for development

First make sure that Elm 0.19.1 is installed globally. For watch mode to be enabled, [fswatch](https://github.com/emcrisostomo/fswatch) is required too. I installed it through Homebrew.

Then install `tailwind` and `uglifyjs` like this:

```
# Install tailwindcss and deps
cd tailwind
npm ci
cd ..

# Install uglify-js (in a separate folder, just to minimize the js build)
cd uglifyjs
npm ci
cd ..
```

The project can be built into the `build` folder using `make`:

```
# Create a development build (will output files into `build/dev`)
make clean dev

# Or, if only changes elements should be digested
make dev

# To run in watch mode for the elm folder (requires fswatch)
fswatch -o elm/src | xargs -n1 -I{} make elm

# Watch mode for both elm, html and tailwind
fswatch -o elm/src html tailwind | xargs -n1 -I{} make dev
```

## Production builds

```
# Create a production build (will output files into `build/prod`)
make clean prod
```