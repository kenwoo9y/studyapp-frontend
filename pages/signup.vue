<template>
  <user-form-card>
    <template 
      #user-form-card-content
    >
      <v-form 
        ref="form"
        v-model="isValid"
      >
        <user-form-name 
          :name.sync="params.user.name"
        />
        <user-form-email 
          :email.sync="params.user.email"
          placeholder
        />
        <user-form-password 
          :password.sync="params.user.password"
          set-validation
        />
        <v-btn 
          :disabled="!isValid || loading"
          :loading="loading"
          block
          color="primary"
          class="white--text"
          @click="signup"
        >
         登録
        </v-btn>
      </v-form>
    </template>
  </user-form-card>
</template>

<script>
export default {
  layout: 'before-login',
  data() {
    return {
      isValid: false,
      loading: false,
      params: { user: { name: '', email: '', password: '' } }
    }
  },
  methods: {
    signup() {
      this.formReset()
      this.loading = "true"
      setTimeout(() => (this.loading = false), 1500)
    }
  },
  formReset() {
    this.$refs.form
    for (const key in this.params.user) {
      this.params.user[key] = ''
    }
  }
}
</script>