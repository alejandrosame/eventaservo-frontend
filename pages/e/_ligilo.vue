<template>
  <div>
    <div class="title">
      {{ this.evento.titolo }}
    </div>
    <div class="subtitle-1">
      {{ this.evento.priskribo }}
    </div>
    <div class="">{{ this.evento.enhavo }}</div>
    <br />
    <br />
    <br />
    <br />
    <hr />
    <v-btn small text color="primary" nuxt to="/">
      Voltar
    </v-btn>
  </div>
</template>

<script>
export default {
  name: 'index',
  data() {
    return {
      evento: {},
    }
  },
  async mounted() {
    await this.$axios
      .$get('eventoj/e/' + this.$route.params.ligilo)
      .then((response) => {
        this.evento = response
      })
  },
}
</script>

<style scoped lang="sass">
.title
  border-bottom: 1px solid black
</style>
