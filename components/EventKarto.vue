<template>
  <v-card style="width: 20rem;" class="ma-2">
    <v-card-title>{{ this.evento.titolo }}</v-card-title>
    <v-card-subtitle>{{ this.evento.urbo }}</v-card-subtitle>
    <v-card-text>{{ this.evento.priskribo }}</v-card-text>
    <v-card-actions>
      <v-spacer />
      <v-btn small color="primary" text nuxt :to="'/e/' + this.evento.ligilo"
        >Legi pli</v-btn
      >
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  name: 'EventKarto',
  props: ['evento'],
}
</script>

<style scoped></style>
