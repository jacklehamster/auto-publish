# auto-publish
[![npm version](https://badge.fury.io/js/@dobuki%2Fauto-publish.svg)](https://www.npmjs.com/package/@dobuki/auto-publish)

![](https://jacklehamster.github.io/auto-publish/icon.png)

## Description

This package contains some scripts to auto-publish into npmjs. It uses "np", which does most of the work, but sometimes "np" fails due to various pre-requisites not met. This package just solves that.
- First, it's going to auto-commit just in case there are still un-committed item.
- It ensures the repo is "ssh", not "https://"
- Then just executes np.

## Usage

Install [@dobuki/auto-publish](https://www.npmjs.com/package/@dobuki/auto-publish) into your `package.json` devDependencies.

```shell
# With bun
bun i -D @dobuki/auto-publish
# or with npm
npm i -D @dobuki/auto-publish
```

`package.json`:

```json
{
  ...
  "devDependencies": {
    "@dobuki/auto-publish": "^1.0.5",
    ...
  },
}
```

Add the following entry into the scripts section:

```json
{
  ...
  "scripts": {
    "auto-publish": "npm explore @dobuki/auto-publish -- bun run auto-publish \"$(pwd)\"",
    ...
  }
}
```

Then you can execute the script to publish straight into npmjs:

```shell
npm run auto-publish
```


## Github Source

[https://github.com/jacklehamster/auto-publish/](https://github.com/jacklehamster/auto-publish/)
