# Crosspost to Po.et Network Generator for Jekyll

This plugin makes it possible to automatically syndicate your posts to the [Po.et network](https://po.et) from your Jekyll projects.

## Setup

1. [Sign up for a Frost API account](https://frost.po.et/) (if you don’t already have one). Log in.
2. Go to [your tokens page](https://frost.po.et/token) and look for "Get API Key". Generate one. Save it to your [Environment Variables](https://en.wikipedia.org/wiki/Environment_variable) as FROST_TOKEN.

## Installation

This plugin can be installed:

By directly copying `jekyll-crosspost-to-medium.rb` (found in the `lib` directory) into your `_plugins` directory.

## Crossposting

Add `crosspost_to_poet: true` to the front matter of any post you would like to crosspost to the Po.et network.

## Configuation

This plugin takes a number of configuration options, some of which are needed for it to operate. The following options are available:

```yaml
jekyll-crosspost_to_medium:
  enabled: true | false
  cache: .jekyll-crosspost_to_medium
  backdate: true | false
  text: 'YourNameHere'
```

* `enabled`

    Default: `true`

    Controls crossposting globally. Setting this to false will skip the processing loop entirely which can be useful for local preview builds.

* `cache`

    Default: `[source directory]/.jekyll-crosspost_to_medium`

    The name of the diretory where crossposted files will be logged. Make sure this file gets checked into your Git repo if you work from multiple computers. This will ensure you never crosspost an entry more than once.

* `text`

    Default: `<p><i>This article was originally posted <a href="{{ url }}" rel="canonical">on my own site</a>.</i></p>`

    Optionally, provide a string to override the default text for the canonical link back to the source post. A `{{ url }}` placeholder should be provided to indicate where to put the canonical link, e.g., `Some <a href="{{ url }}">link</a>`

* `backdate`

    Default: `true`

    Whether or not to use the original date & time of publication when crossposting.

* `author`

    Default: `public`

    The status your post is given when it is syndicated to Medium.


## A Note on Environment Variables

If you are having problems setting up Environment Variables, check out these guides:

* [Linux](https://www.digitalocean.com/community/tutorials/how-to-read-and-set-environmental-and-shell-variables-on-a-linux-vps)
* [Mac](http://osxdaily.com/2015/07/28/set-enviornment-variables-mac-os-x/) (For a GUI, check out [EnvPane](https://github.com/hschmidt/EnvPane))
* [Windows](http://www.computerhope.com/issues/ch000549.htm)

## Credits

Many thanks to Jeremy Keith for [sharing his process](https://adactio.com/journal/9694) (and [PHP code](https://gist.github.com/adactio/c174a4a68498e30babfd)) for getting this working on his own site.
