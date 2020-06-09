<template>
  <a
    :href="
      'https://www.google.com/maps/search/?api=1&query=' + this.plenaAdreso
    "
    class="link--blue"
    target="_blank"
  >
    <v-icon small color="primary">mdi-google-maps</v-icon>
    {{ this.strato }}
  </a>
</template>

<script>
export default {
  name: 'es-google-maps-ligilo',
  props: {
    strato: {
      type: String,
      required: true,
    },
    plenaAdreso: {
      type: String,
      required: true,
    },
  },
}
</script>

<style scoped></style>
