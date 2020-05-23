<template>
  <div>
    <div class="d-flex flex-wrap">
      <event-karto
        v-for="evento in eventoj"
        :key="evento.uuid"
        :evento="evento"
      ></event-karto>
    </div>
  </div>
</template>

<script>
import EventKarto from '~/components/EventKarto'

export default {
  components: {
    EventKarto
  },
  data() {
    return {
      eventoj: []
    }
  },
  mounted() {
    console.log('MOUNTED')
    this.$axios.$get('eventoj.json').then(response => {
      this.eventoj = response
    })
  }
}
</script>
