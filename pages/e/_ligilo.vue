<template>
  <div>
    <v-row>
      <v-col cols="12" md="8">
        <v-card>
          <v-card-title>
            <flag :code="this.evento.flagoKodo" />
            &nbsp;
            {{ this.evento.titolo }}
            <v-spacer />
            <v-btn icon><v-icon>mdi-dots-vertical</v-icon></v-btn>
          </v-card-title>
          <v-card-subtitle>
            {{ this.evento.priskribo }}
          </v-card-subtitle>
          <v-card-text class="trix-content" style="color: black;">
            <!--    <form>-->
            <!--      <input id="x" :value="this.evento.enhavo" type="hidden" />-->
            <!--      <trix-editor class="trix-content" input="x"></trix-editor>-->
            <!--    </form>-->

            <p v-html="this.evento.enhavo"></p>
          </v-card-text>
          <v-card-actions>
            <v-btn small text color="orange">Raporti</v-btn>
            <v-btn small text color="red">Nuligi</v-btn>
            <v-spacer></v-spacer>
            <v-btn small text color="green">Duobligi</v-btn>
            <v-btn small text color="primary" nuxt to="/">
              Voltar
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
      <v-col cols="12" md="4">
        <v-card>
          <v-card-title>Informoj</v-card-title>
          <v-card-text>
            <es-retejo :url="this.evento.retejo" />
            <br />
            <es-retposhtadreso :retposhtadreso="this.evento.retposhtadreso" />
            <br />
            <es-google-maps-ligilo
              :plena-adreso="this.evento.plenaAdreso"
              :strato="this.evento.strato"
            />
            <br />
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </div>
</template>

<script>
import Flag from '~/components/Flag'
import EsGoogleMapsLigilo from '~/components/ligiloj/es-google-maps-ligilo'
import EsRetposhtadreso from '~/components/ligiloj/es-retposhtadreso'
import EsRetejo from '~/components/ligiloj/es-retejo'
export default {
  name: 'index',
  components: { EsRetejo, EsRetposhtadreso, EsGoogleMapsLigilo, Flag },
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
