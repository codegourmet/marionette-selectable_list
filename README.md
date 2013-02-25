marionette-selectable_list
==========================

This gem adds a selectable list view to Backbone.Marionette.
In default configuration, a click on any model will set a CSS class in the model view and fire an event.

This gem is rails asset pipeline ready.

Tested with: Backbone.Marionette v1.0.0-rc6

## Usage

Add this to your `Gemfile`:

    group :assets do
      # ...

      gem 'marionette-selectable_list'
    end


Add this to your `app/assets/javascripts/application.js`:

    //= require marionette-selectable_list


### General

Derive your view from `Backbone.Marionette.SelectableList.CompositeView` instead of CompositeView. The same goes for ItemView.

The ItemView will listen to the 'click' event on it's item. If a click is caught, the item will have the CSS class 'selected' set and an event 'selectable:select' will get fired by the CompositeListView.

NOTE: setup the parameter `selectable` in ItemView explanation below to make sure that clicks on your items will get caught (also, see TODO at the bottom of this document).


### CompositeView attributes

`itemView`: Set this to your own ItemView, which is expected to be derived from SelectableList.ItemView.
`eventPrefix`: default: `selectable`. If this is set, it's value is used as event prefix.


### ItemView attributes

`selectable`: default: `.item`. The selector used to identify the click element in your ItemView template.
`selectedCssClass`: default: `selected`. The CSS class that will get set on select trigger.
`isSelected`: default: `false`. Use this to preselect an item.
`selectionMethod`: default: `setCssClass`. Use this if you want to do a custom action on select trigger.


### Triggering Selection

The following methods of SelectableList.CompositeView can be used if you need to trigger selection programmatically:

    onItemSelect(itemView);
    selectByIndex(itemIndex);
    selectByModel(model);


## Example

TODO


## Contributing

I'm happy about any pull requests.
Also, if you're lazy: just add something to the TODOs via pull request.


## TODO

- example
- if ItemView property `item` is set to null, listen to clicks on the entire view's $el.
- test `selectionMethod` param. This is assumed to work but not tested, due to time constraints.
- tests
