<template>
    <v-container grid-list-md text-xs-center>

        <div class="col-md-12">
            <h1>Serviços</h1>

            <v-text-field
                label="Serviço"
                placeholder="Serviços"
                v-model="servico.descricao"
                ></v-text-field>
            
            <v-btn color="success" @click="SalvaServico">Salvar Serviço</v-btn>
        </div>

        <div md12>
            <v-btn color="success" @click="AddAgenda">Add Agenda</v-btn>
        </div>

        <br />  
        
        <div v-for="item in servico.lstAgendaServico" v-bind:key="item.id">
        
            <v-card>

                <v-card-title primary-title>
                    <v-flex md6>
                        <VueCtkDateTimePicker md6 class="col-md-6" 
                            label="Inicio" v-model="item.dthr_ini" />
                    </v-flex>
                    <v-flex md6>
                        <VueCtkDateTimePicker md6 class="col-md-6" 
                            label="Fim" v-model="item.dthr_fim" />
                    </v-flex>

                </v-card-title>
            </v-card>

        </div>


    </v-container>

</template>

<script>
    import axios from "axios";

    export default 
    {
        components: {},
        data: () => ({
            servico: { id: 0, descricao: '', lstAgendaServico: []},
            lst_servicos: []
        }),
        created: function() {
            
        },
        methods: {
            AddAgenda(){
                var agenda = {};
                this.servico.lstAgendaServico.push(agenda)
            },
            Validation(){
                if(this.servico.lstAgendaServico.length == 0){
                    alert('Preencha a lista de horarios. ');
                    return false;
                }

                return true;
            },
            SalvaServico(){                
                if(this.Validation()){
                    var url =  this.$url_api + "/Servico/Add";

                    axios({ 
                        method: "POST", 
                        "url": url, 
                        "data": JSON.stringify(this.servico), 
                        "headers": { "content-type": "application/json" } 
                    }).then(result => 
                    {
                        this.servico = {};
                        this.$router.push('/');
                    }, error => {
                        console.error(error);
                    });

                }
                

            }
        }
    }
</script>

<style>

</style>
