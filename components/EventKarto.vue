<template>
  <v-card style="width: 20rem;" class="ma-2">
    <v-card-title>
      <div>
        <flag :code="this.evento.flagoKodo" />
        {{ this.evento.titolo }}
      </div>
    </v-card-title>
    <v-card-subtitle>{{ this.evento.urbo }}</v-card-subtitle>
    <v-card-text> {{ this.evento.priskribo }}</v-card-text>
    <v-card-actions>
      <v-spacer />
      <v-btn small color="primary" text nuxt :to="'/e/' + this.evento.ligilo"
        >Legi pli</v-btn
      >
    </v-card-actions>
  </v-card>
</template>

<script>
import Flag from '~/components/Flag'

export default {
  name: 'EventKarto',
  props: ['evento'],
  components: {
    Flag,
  },
}
</script>

<style scoped></style>
