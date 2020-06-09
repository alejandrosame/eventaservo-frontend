<template>
  <span class="d-inline-block text-truncate" style="max-width: 20em;">
    <a :href="this.url" class="link--blue" target="_blank">
      <v-icon small color="primary">mdi-earth</v-icon>
      {{ this.url }}
    </a>
  </span>
</template>

<script>
export default {
  name: 'es-retejo',
  props: {
    url: {
      type: String,
      required: true,
    },
  },
}
</script>

<style scoped></style>
