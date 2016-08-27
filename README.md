# bumped-gh-pages

<h1 align="center">
  <br>
  <img src="http://i.imgur.com/DmMbFwL.png" alt="bumped">
  <br>
  <br>
</h1>

![Last version](https://img.shields.io/github/tag/bumped/bumped-gh-pages.svg?style=flat-square)
[![Dependency status](http://img.shields.io/david/bumped/bumped-gh-pages.svg?style=flat-square)](https://david-dm.org/bumped/bumped-gh-pages)
[![Dev Dependencies Status](http://img.shields.io/david/dev/bumped/bumped-gh-pages.svg?style=flat-square)](https://david-dm.org/bumped/bumped-gh-pages#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/bumped-gh-pages.svg?style=flat-square)](https://www.npmjs.org/package/bumped-gh-pages)
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg?style=flat-square)](https://paypal.me/kikobeats)

> Publishing files on GitHub Pages.

Configure your .bumpedrc adding a entry for `bumped-gh-pages` as the follow example:

```cson
files: [
  'package.json'
]

plugins:

  postrelease:

    'Publishing at GitHub Pages':
      plugin: 'bumped-gh-pages'
      folder: 'dist'
```

## Install

> You don't need to install it! Bumped automatically resolve the plugins dependencies. However if you still want to do so must be globally accessible:

```bash
$ npm install -g bumped-gh-pages
```

## API

### folder

*Required*
Type: `string`

The base directory for all source files.

- `$newVersion`: The bumped version before the release.
- `$oldVersion`: The bumped version after the release.

### opts

Type: `object`

Additional options to be passed to [gh-pages](https://github.com/tschaub/gh-pages).

## License

MIT © Bumped
