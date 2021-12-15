<template>
  <div class="log__input">
      <input class="log__text" v-model="input"/>

      <button class="log__send-button" @click="clicked">
          <img class="log__send-button-image" src="../assets/play-solid.svg" alt="play button"/>
      </button>
  </div>
</template>

<script>
export default {
  data: () => ({
    input: ''
  }),
  methods: {
    clicked() {
      this.$emit('send', this.input)
      this.input = ''
    }
  }
}
</script>