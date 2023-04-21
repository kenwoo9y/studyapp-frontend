<template>
  <v-text-field
    v-model="setPassword"
    label="パスワード"
    placeholder="パスワード"
    outlined
  />
</template>

<script>
export default {
  props: {
    password: {
      type: String,
      default: ''
    }
  },
  computed: {
    setPassword: {
      get () { return this.password },
      set (newVal) { return this.$emit('update:password', newVal) }
    }
  }
}
</script>