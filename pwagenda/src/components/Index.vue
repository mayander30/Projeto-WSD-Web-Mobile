<template>
    <v-container grid-list-md text-xs-center>
        <h1>Serviços</h1>
        <bR/>
        <div v-for="item in lstServicos" v-bind:key="item.id">
            <h1>{{ 'Serviço: ' + item.descricao }}</h1>

            <div v-for="itemAgenda in item.lstAgendaServico" v-bind:key="itemAgenda.id">

                <v-card>
                    <v-card-title primary-title>
                        <v-flex md4>
                            <h3>{{ itemAgenda.dthr_ini }}</h3>
                        </v-flex>
                        <v-flex md4>
                            <h3>{{ itemAgenda.dthr_fim }}</h3>
                        </v-flex>

                        <v-flex v-if="itemAgenda.confirmacao == null" md4>
                            <v-chip color="success" label outline @click="MarcaAgenda(itemAgenda)">DISPONIVEL</v-chip>
                        </v-flex>

                        <v-flex v-if="itemAgenda.confirmacao != null" md4>
                            <v-chip color="orange" label outline>MARCADO</v-chip>
                        </v-flex>

                    </v-card-title>
                </v-card>

            </div>
            <bR/><bR/>
 

        </div>


    </v-container>

</template>

<script>
    import axios from "axios";

    export default 
    {
        components: {},
        data: () => ({
            lstServicos: [],
        }),
        created: function() {
            this.AtualizaLista();
        },
        methods: {
            AtualizaLista(){
                var url = this.$url_api + "/Servico/Get";
                axios({ 
                    method: "GET", 
                    "url": url, 
                }).then(result => 
                {
                    this.lstServicos = result.data.lstServicos;
                    
                }, error => {
                    console.error(error);
                });
            },
            MarcaAgenda(itemAgenda){
                var url = this.$url_api + "/Servico/ConfAgenda";
                var ConfirmacaoAgendaServico = {};
                ConfirmacaoAgendaServico.agendaServico = itemAgenda;
                ConfirmacaoAgendaServico.usuario = "WEB";

                axios({ 
                    method: "POST", 
                    "url": url, 
                    "data": JSON.stringify(ConfirmacaoAgendaServico), 
                    "headers": { "content-type": "application/json" } 
                }).then(result => 
                {
                    this.AtualizaLista();
                }, error => {
                    console.error(error);
                });
                
            }
        }
    }
</script>

<style>

</style>
