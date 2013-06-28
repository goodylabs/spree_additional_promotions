SpreeAdditionalPromotions
=========================

This extension adds new rules (for now only one) to promotion rules:
- ProductCount ( applies when user buys many examples of the same product)

```
Rails.application.config.spree.promotions.rules <<  Spree::Promotion::Rules::ProductCount 
```

Installation
------------

Add spree_additional_promotions to your Gemfile:

```ruby
gem 'spree_additional_promotions'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_additional_promotions:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_additional_promotions/factories'
```

Copyright (c) 2013 [name of extension creator], released under the New BSD License
