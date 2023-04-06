<template>
  <v-app>
    <home-app-bar />
    <v-sheet>
      <v-container
        fluid
        :style="{ maxWidth: '1280px' }"
      >
        <v-row
          v-for="(menu, i) in menus"
          :key="`menu-${i}`"
        >
          <v-col cols="12">
            <div :is="`home-${menu.title}`" />
          </v-col>
        </v-row>
      </v-container>
    </v-sheet>
    <app-footer />
  </v-app>
</template>

<script>
import HomeAbout from '~/components/home/HomeAbout'
import HomeSubjects from '~/components/home/HomeSubjects'
import HomePrice from '~/components/home/HomePrice'
import HomeContact from '~/components/home/HomeContact'

export default {
  components: {
    HomeAbout,
    HomeSubjects,
    HomePrice,
    HomeContact
  },
  data () {
    return {
      menus: [
        { title: 'about', subtitle: 'about' },
        { title: 'subjects', subtitle: 'subjects' },
        { title: 'price', subtitle: 'price' },
        { title: 'contact', subtitle: 'contact' }
      ]
    }
  }
}
</script>