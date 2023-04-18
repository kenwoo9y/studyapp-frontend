<template>
  <user-form-card>
    <template 
      #user-form-card-content
    >
      <user-form-name />
      <user-form-email />
      <user-form-password />
    </template>
  </user-form-card>
</template>

<script>
export default {
  layout: 'before-login'
}
</script>