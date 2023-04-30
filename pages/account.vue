<template>
  <v-container>
    <nuxt-child />
  </v-container>
</template>

<script>
export default {
  layout: 'signed-in',
  validate ({ route }) {
    return route.name !== 'account'
  }
}
</script>