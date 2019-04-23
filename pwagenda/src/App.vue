<template>
  <v-app>
    <v-toolbar app>
      <v-toolbar-title class="headline text-uppercase" to="/">
    
        <router-link to="/" class="menu">
            <button >
                <v-icon>home</v-icon>
                <span >Home</span>   
            </button>
        </router-link>

      </v-toolbar-title>
      <v-spacer></v-spacer>

        <router-link to="/Servico" class="menu">
            <button>
                <v-icon>add</v-icon>
                <span>Adicionar Serviço</span>   
            </button>
        </router-link>

    </v-toolbar>

    <v-content>
      <router-view></router-view>
    </v-content>
  </v-app>
</template>

<script>
import Index from './components/Index'

export default {
  name: 'App',
  components: {
    Index
  },
  data () {
    return {
      //
    }
  }
}
</script>

<style>
  .menu{
    color: rgb(2, 27, 49);
  }

  .menu:visited{
    color: rgb(2, 27, 49);
  }

</style>