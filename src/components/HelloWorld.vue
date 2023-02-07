<script setup>
import { ref } from 'vue'

defineProps({
  msg: String,
})

const count = ref(0)
</script>

<template>
  <h1>{{ msg }}</h1>

  <h2> My name is Josmar Regalado </h2>

  <p>
    I am an software developer currently based in Helsinki.
    I  mainly build solutions with
    <a href="https://vuejs.org/" target="_blank" rel="noopener">Vue</a>
    +
    <a href="https://www.djangoproject.com/" target="_blank" rel="noopener">Django</a>
    living on
    <a href="https://kubernetes.io/" target="_blank" rel="noopener">Kubernetes</a>
     clusters.
  </p>
  <p>
    Outside of programming I
    <a href="https://twitter.com/josmarregalado" target="_blank" rel="noopener">tweet</a>
     random things and pilot drones. You can find some shots on my
    <a href="https://www.instagram.com/josmar.regalado/" target="_blank" rel="noopener">instagram</a>.
    If I have time left, I practice bouldering, 🏂, and do 🧖-avanto (❄🏊).
  </p>

</template>

<style scoped>
.read-the-docs {
  color: #888;
}

p {
  font-size: 1.6em;
  font-weight: 300;
  line-height: 1.4;
  max-width: 28em;
}

</style>
