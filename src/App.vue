<template>
  <section class="main-painel">
    <section class="head-options">
      <Logo/>
      <div class="head-options__options">
        <ButtonClear @click="clear()"/>
        <ButtonPlay @click="run()"/>
      </div>
    </section>

    <section class="log">
      <textarea class="log__console" readonly :value="output"/>
      <!-- <LogInput @send="input=$event"/> -->
    </section>
  </section>

  <section class="secondary-painel">
    <div class="secondary-painel__user-painel">
      <div class="secondary-painel__options">
        <ButtonExamples/>
        <ButtonLoadFile/>
      </div>

      <textarea class="secondary-painel__file-view" v-model="file"/>
    </div>

    <textarea class="secondary-painel__error-log" :value="debug"/>
  </section>
  
</template>

<script>
/** stylesheet **/
import "./styles/reset.css"
import "./styles/global.css"
import "./styles/app.styles.css"

/** components **/
import ButtonClear from "./components/ButtonClear.vue"
import ButtonExamples from "./components/ButtonExamples.vue"
import ButtonLoadFile from "./components/ButtonLoadFile.vue"
import ButtonPlay from "./components/ButtonPlay.vue"
import LogInput from "./components/LogInput.vue"
import Logo from "./components/Logo.vue"

/** Modules **/
import HyperVisor  from './vm.js'

export default {
  components: {
    ButtonClear,
    ButtonExamples,
    ButtonLoadFile,
    ButtonPlay,
    LogInput,
    Logo,
  },
  data: () => ({
    input: '',
    debug: '',
    output: '',
    file: 'MODE NILL 0d2\nSTRC NILL \'h\'\nSTRC NILL \'i\'\nSTRC NILL \'!\'\n'
  }),
  methods: {
    clear() {
      this.debug = ''
      this.output = ''
    },
    run() {
      const app = this
      HyperVisor({
        arguments: app.file? ['script.3bc']: [],
        stderr(buffer) {
          app.debug += String.fromCharCode(buffer)
        },
        stdout(buffer) {
          app.output += String.fromCharCode(buffer)
        },
        onRuntimeInitialized() {
          this.FS_createDataFile('.', 'script.3bc', app.file, true)
        }
      })
    },
  },
}
</script>

<style>
#app {
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
