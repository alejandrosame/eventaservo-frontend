<template>
  <div class="d-flex flex-wrap justify-center">
    <event-karto
      v-for="evento in eventoj"
      :key="evento.uuid"
      :evento="evento"
    ></event-karto>
  </div>
</template>

<script>
import EventKarto from '~/components/EventKarto'

export default {
  components: {
    EventKarto,
  },
  data() {
    return {
      eventoj: [],
    }
  },
  async mounted() {
    this.$axios.setToken(process.env.API_CODE)
    await this.$axios.$get('eventoj').then((response) => {
      this.eventoj = response
    })
  },
}
</script>
