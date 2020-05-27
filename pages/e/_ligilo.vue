<template>
  <div>
    <v-row>
      <v-col lg="9">
        <div>
          <div class="title">
            <flag :code="this.evento.flagoKodo" />

            {{ this.evento.titolo }}
          </div>
          <div class="subtitle-1">
            {{ this.evento.priskribo }}
          </div>
          <br />
          <!--    <form>-->
          <!--      <input id="x" :value="this.evento.enhavo" type="hidden" />-->
          <!--      <trix-editor class="trix-content" input="x"></trix-editor>-->
          <!--    </form>-->

          <div class="trix-content">
            <p v-html="this.evento.enhavo"></p>
          </div>
          <br />
          <br />
          <br />
          <br />
          <hr />
          <v-btn small text color="primary" nuxt to="/">
            Voltar
          </v-btn>
        </div>
      </v-col>
      <v-col lg="3">Outra coluna</v-col>
    </v-row>
  </div>
</template>

<script>
import Flag from '~/components/Flag'
export default {
  name: 'index',
  components: { Flag },
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
