<script>
import "./styles/reset.css"
import "./styles/global.css"
import "./styles/app.styles.css"

</script>

<template>
  <section class="main-painel">
    <section class="head-options">
      <img class="head-options__logo" alt="3BC Lang logo" src="./assets/logo.png" />

      <div class="head-options__options">
        <button class="head-options__btn head-options__reset-button">Reset</button>
        <button class="head-options__btn head-options__run-button">
          <img src="./assets/play-stroked.svg" alt="play button">
          <p>Run</p>
        </button>
      </div>
    </section>

    <section class="log">
      <textarea class="log__console">print("Hello, world!")</textarea>
      
      <div class="log__input">
        <input class="log__text" type="text">

        <button class="log__send-button">
          <img class="log__send-button-image" src="./assets/play-solid.svg" alt="play button">
        </button>
      </div>
    </section>
  </section>

  <section class="secondary-painel">
    <div class="secondary-painel__user-painel">
      <div class="secondary-painel__options">
        <button class="secondary-painel__option">examples</button>
        <button class="secondary-painel__option">load file</button>
        <button class="secondary-painel__option">disable file</button>
      </div>

      <textarea class="secondary-painel__file-view">print("Hello, world!")</textarea>
    </div>

    <textarea class="secondary-painel__error-log">print("Hello, world!")</textarea>
  </section>
  
</template>

<style>
#app {
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
