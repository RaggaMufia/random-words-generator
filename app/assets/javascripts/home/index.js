(function() {
  window.WordGenerator = function() {};

  window.WordGenerator.prototype = {
    initialize: function(words) {
      this.words = words;
      this._bindEvents();
    },

    _bindEvents: function() {
      var _this = this;

      $("#next-btn").on("click", function(e) {
        e.preventDefault();

        $(".target").html(_this.words.pop());
      });
    }
  }
}());
