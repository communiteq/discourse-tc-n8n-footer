import Component from '@glimmer/component';
import { action } from '@ember/object';
import { on } from "@ember/modifier";

export default class ToggleButton extends Component {
  @action
  toggleSubFooter() {
    let subFooter = document.getElementById('subFooter');
    if (subFooter) {
      subFooter.classList.toggle('sub-footer--full');
    }
  }

  <template>
    <button type="button" class="footer-link footer-link--more" {{on "click" this.toggleSubFooter}}></button>
  </template>
}
