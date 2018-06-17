# Crosspost to Po.et Network Generator for Jekyll

[![Join the chat at https://gitter.im/jekyll-crosspost-to-poet/Lobby](https://badges.gitter.im/jekyll-crosspost-to-poet/Lobby.svg)](https://gitter.im/jekyll-crosspost-to-poet/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This plugin makes it possible to automatically syndicate your posts to the [Po.et network](https://po.et) from your [Jekyll](https://jekyllrb.com) projects.

This is a fork of [Aaron Gustafson](https://www.aaron-gustafson.com)'s [jekyll-crosspost-to-medium](https://github.com/aarongustafson/jekyll-crosspost-to-medium) project, updated with support for the latest version of Jekyll and configured to work with the Frost API.

## Setup

1.  [Sign up for a Frost API account](https://frost.po.et/) (if you don’t already have one). Log in.
2.  Go to [your tokens page](https://frost.po.et/token) and look for "Get API Key". Generate one. Save it to your [Environment Variables](https://en.wikipedia.org/wiki/Environment_variable) as FROST_TOKEN.

## Installation

This plugin can be installed:

By directly copying `jekyll-crosspost-to-poet.rb` (found in the `lib` directory) into your `_plugins` directory.

## Crossposting

Add `crosspost_to_poet: true` to the front matter of any post you would like to crosspost to the Po.et network.

## Configuation

This plugin takes a number of configuration options, some of which are needed for it to operate. The following options are available:

```yaml
jekyll-crosspost_to_poet:
  enabled: true | false
  cache: .jekyll-crosspost_to_poet
  backdate: true | false
  text: 'YourNameHere'
  author: 'YourNameHere'
```

- `enabled`

  Default: `true`

  Controls crossposting globally. Setting this to false will skip the processing loop entirely which can be useful for local preview builds.

- `cache`

  Default: `[source directory]/.jekyll-crosspost_to_poet`

  The name of the directory where crossposted files will be logged. Make sure this file gets checked into your Git repo if you work from multiple computers. This will ensure you never crosspost an entry more than once.

- `text`

  Default: `<p><i>This article was originally posted <a href="{{ url }}" rel="canonical">on my own site</a>.</i></p>`

  Optionally, provide a string to override the default text for the canonical link back to the source post. A `{{ url }}` placeholder should be provided to indicate where to put the canonical link, e.g., `Some <a href="{{ url }}">link</a>`

- `backdate`

  Default: `true`

  Whether or not to use the original date & time of publication when crossposting.

- `author`

  Default: `public`

  The status your post is given when it is syndicated to Po.et.

## A Note on Environment Variables

If you are having problems setting up Environment Variables, check out these guides:

- [Linux](https://www.digitalocean.com/community/tutorials/how-to-read-and-set-environmental-and-shell-variables-on-a-linux-vps)
- [Mac](http://osxdaily.com/2015/07/28/set-enviornment-variables-mac-os-x/) (For a GUI, check out [EnvPane](https://github.com/hschmidt/EnvPane))
- [Windows](http://www.computerhope.com/issues/ch000549.htm)

## Credits

### Solomon Victorino

Thanks to Aaron Gustafson, who wrote most of the original code for the Medium crossposter.

Also, many thanks to the [Po.et team](https://www.po.et/team) for building the easy-to-use Frost API in the first place.

### Aaron Gustafson

Many thanks to Jeremy Keith for [sharing his process](https://adactio.com/journal/9694) (and [PHP code](https://gist.github.com/adactio/c174a4a68498e30babfd)) for getting this working on his own site.

_This project is not affiliated with Aaron Gustafson or any contributors to the original project._
