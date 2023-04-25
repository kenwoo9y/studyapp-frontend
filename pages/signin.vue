<template>
  <user-form-card>
    <template 
      #user-form-card-content
    >
      <v-form 
        ref="form"
        v-model="isValid"
      >
        <user-form-email 
          :email.sync="params.user.email"
          placeholder
        />
        <user-form-password 
          :password.sync="params.user.password"
        />
        <v-card-actions>
          <nuxt-link 
            to="#" 
            class="body-2 text-decoration-none"
          >
            パスワードを忘れた場合はこちら
          </nuxt-link>
        </v-card-actions>
        <v-card-text 
          class="px-0"
        >
          <v-btn 
            :disabled="!isValid || loading"
            :loading="loading"
            block
            color="primary"
            class="white--text"
            @click="signin"
          >
           ログイン
          </v-btn>
        </v-card-text>
      </v-form>
    </template>
  </user-form-card>
</template>

<script>
export default {
  layout: 'before-signin',
  data() {
    return {
      isValid: false,
      loading: false,
      params: { user: { email: '', password: '' } }
    }
  },
  methods: {
    signin() {
      this.loading = "true"
      setTimeout(() => (this.loading = false), 1500)
    }
  }
}
</script>