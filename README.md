# Banko

## Setting up for development

First make sure that Elm 0.19.1 is installed globally.

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
```

## Production builds

```
# Create a production build (will output files into `build/prod`)
make clean prod
```