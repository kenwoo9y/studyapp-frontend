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
  </v-app>
</template>

<script>
import homeAbout from '~/components/home/homeAbout'
import homeSubjects from '~/components/home/homeSubjects'
import homePrice from '~/components/home/homePrice'
import homeContact from '~/components/home/homeContact'

export default {
  components: {
    homeAbout,
    homeSubjects,
    homePrice,
    homeContact
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