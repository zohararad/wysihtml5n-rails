# Wysihtml5n-rails

This gem is a rails plugin that vendorizes the WysiHTML5-Enhanced Rich-Text editor for use with Rails asset pipeline.

You can learn more about WysiHTML5-Enhanced on [Github](https://github.com/zohararad/wysihtml5n)

## Installation

```
gem install wysihtml5n-rails
```

## Usage

In your application.css (or any other Sprokets-enabled CSS file) add:

```
//= require wysihtml5n
```

Alternatively, if you're using SASS you can import wysihtml5n modules individually:

```sass
@import 'wysihtml5n/bootstrap';
@import 'wysihtml5n/editor';
@import 'wysihtml5n/font-awesome';
```

In your application.js (or any other Sprockets-enabled Javascript file) add:

```javascript
//= require wysihtml5n
```

Or include the editor modules individually:

```javascript
//= require wysihtml5n/jcrop
//= require wysihtml5n/wysihtml5-0.3.0
//= require wysihtml5n/wysihtml5-enhanced
```

Finally, initialize the editor:

```javascript
$('.wysiwyg').wysiHTML5N();
```

## Dependencies

Wysihtml5n-rails depends on:

* jQuery
* Rails 3.1+
* SASS

The Twitter Bootstrap CSS file that's bundled with Wysihtml5n-rails only contains styles for forms and buttons. If you're already using Twitter Bootstrap in your application there's no need to require it again.