<template>
  <v-app id="es-body">
    <v-navigation-drawer
      v-model="drawer"
      :clipped="$vuetify.breakpoint.lgAndUp"
      app
    >
      <div class="text-center">
        <p class="display-1 font-weight-thin mt-4">Eventa Servo</p>
        <v-btn rounded outlined small color="green" class="text-center"
          ><v-icon small>mdi-calendar-plus</v-icon>Aldoni eventon</v-btn
        >
        <br />
        <br />
      </div>
      <v-divider></v-divider>
      <v-list dense>
        <v-subheader>Eventoj</v-subheader>

        <v-list-item link>
          <v-list-item-action>
            <v-icon>mdi-plus</v-icon>
          </v-list-item-action>
          <v-list-item-title>
            Aldoni eventon
          </v-list-item-title>
        </v-list-item>

        <!--     Agrupado   -->
        <v-list-group prepend-icon="mdi-heart">
          <template v-slot:activator>
            <v-list-item-title>Eventoj</v-list-item-title>
          </template>

          <v-list-item link>
            <v-list-item-action>
              <v-icon>mdi-minus</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title>
                TEXTO 2
              </v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list-group>
        <v-divider />
      </v-list>
    </v-navigation-drawer>

    <v-app-bar
      :clipped-left="$vuetify.breakpoint.lgAndUp"
      app
      color="green darken-2"
      dark
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
      <v-toolbar-title style="width: 300px;" class="ml-0 pl-4">
        <nuxt-link to="/" class="link--white">
          <span class="hidden-sm-and-down">Eventa Servo</span>
        </nuxt-link>
      </v-toolbar-title>
      <v-text-field
        flat
        solo-inverted
        hide-details
        prepend-inner-icon="mdi-magnify"
        label="Search"
        class="hidden-sm-and-down"
      ></v-text-field>
      <v-spacer></v-spacer>
      <v-btn icon>
        <v-icon>mdi-apps</v-icon>
      </v-btn>
      <v-btn icon>
        <v-icon>mdi-bell</v-icon>
      </v-btn>
      <v-btn icon large>
        <v-avatar size="32px" item>
          <v-img
            src="https://cdn.vuetifyjs.com/images/logos/logo.svg"
            alt="Vuetify"
          ></v-img
        ></v-avatar>
      </v-btn>
    </v-app-bar>
    <v-content>
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
    <v-footer app padless color="green lighten-5" class="body-2">
      <v-col class="text-center" cols="12">
        Versio X
        <v-btn link small text color="blue" to="mailto:kontakto@eventaser.org"
          >Kontaktu nin</v-btn
        >
        <v-btn link small text nuxt color="blue" to="/privateco"
          >Privateco</v-btn
        >
        <v-btn link small text color="blue" to="/prie">Prie</v-btn>
      </v-col>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  props: {
    source: String,
  },
  data: () => ({
    drawer: false,
  }),
}
</script>
<style lang="sass">
#es-body
  background-color: #F7F7F7

.link--white
  color: white !important
  text-decoration: none
</style>
