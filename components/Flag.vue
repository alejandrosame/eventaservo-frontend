<template>
  <span v-if="this.code === 'ol'">🖥</span>
  <span v-else :class="'flag-icon flag-icon-' + this.code"></span>
</template>

<script>
export default {
  name: 'Flag',
  props: ['code'],
}
</script>

<style scoped>
@import '@/node_modules/flag-icon-css/css/flag-icon.min.css';
</style>
