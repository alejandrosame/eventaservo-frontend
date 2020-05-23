<template>
  <div class="lg">
    <v-btn text class="ml-2" color="white" small nuxt to="/">
      <v-icon>mdi-calendar-plus</v-icon>Aldoni eventon
    </v-btn>
    <v-btn text color="white" small nuxt to="/">
      <v-icon>mdi-office-building</v-icon>Organizoj
    </v-btn>
    <v-btn text color="white" small nuxt to="/">
      <v-icon>mdi-heart</v-icon>Subteni
    </v-btn>
    <v-btn text color="white" small nuxt to="/">
      <v-icon>mdi-account-group</v-icon>Pri ni
    </v-btn>
  </div>
</template>

<script>
export default {
  name: 'Navbar'
}
</script>

<style scoped></style>
