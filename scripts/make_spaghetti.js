// The following comment will show up in source because
// it's between multi-line comments; this one won't
/* From make_spaghetti.js */

// Looks in the same folder as this script
//= require "spaghetti_recipe"

// Looks in the load path; finds in cooking_implements/
//= require <pots_and_pans>

// Looks in the lkoad path; finds in groceries/
//= require <sauce>
//= require <meat>
//= require <noodles>

// Copies everything in images/ to public/
//= provide "../images"
var make_spaghetti = {
  // The function! It does nothing!
  cook: function(){
    alert('cooking!');
  }
};
