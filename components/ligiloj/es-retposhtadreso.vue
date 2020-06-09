<template>
  <a :href="'mailto:' + this.retposhtadreso" class="link--blue">
    <v-icon small color="primary">mdi-at</v-icon>
    {{ this.retposhtadreso }}
  </a>
</template>

<script>
export default {
  name: 'es-retposhtadreso',
  props: {
    retposhtadreso: {
      type: String,
      required: true,
    },
  },
}
</script>

<style scoped></style>
