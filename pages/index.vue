<template>
  <v-app>
    <home-app-bar 
      :menus="menus"
      :img-height="imgHeight"
    />
    <v-img
      id="scroll-top"
      dark
      src="/image/eye_catch_img.jpg"
      gradient="to top right, rgba(19,84,122,.3), rgba(128,208,199,.1)"
      :height="imgHeight"
    >
      <v-row
        align="center"
        justify="center"
        :style="{ height: `${imgHeight}px` }"
      >
        <v-col
          cols="12"
          class="text-center"
        >
          <h1 class="display-1 mb-4">
            Study App
          </h1>
          <h4
            class="subheading"
            :style="{ letterSpacing: '5px' }"
          >
            大人の学び直しに
          </h4>
        </v-col>
      </v-row>
    </v-img>
    <v-sheet>
      <v-container
        fluid
        :style="{ maxWidth: '1280px' }"
      >
        <v-row
          v-for="(menu, i) in menus"
          :key="`menu-${i}`"
        >
          <v-col :id="menu.title" cols="12">
            <v-card flat>
              <v-card-title class="justify-center display-1">
                {{ $t(`menus.${menu.title}`) }}
              </v-card-title>
              <v-card-text class="text-center">
                {{ menu.subtitle }}
              </v-card-text>
            </v-card>
          </v-col>
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
      imgHeight: 500,
      menus: [
        { title: 'subjects', subtitle: 'subjects' },
        { title: 'price', subtitle: 'price' },
        { title: 'about', subtitle: 'about' },
        { title: 'contact', subtitle: 'contact' }
      ]
    }
  }
}
</script>