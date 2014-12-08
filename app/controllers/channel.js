import Ember from 'ember';

export default Ember.ObjectController.extend({
  actions: {
     markAllAsListened: function () {
        var i, episodes = this.get('model').get('episodes');
        for(i = 0; i < episodes.length; i++) {
            episodes[i].set ('listened', true)
        }
     }
  }
})