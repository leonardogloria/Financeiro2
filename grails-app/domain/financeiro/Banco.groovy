package financeiro

class Banco {

    String nome
    Character removido = '0'
    String codigo
    String enderecoEletronico
    Date dataCarga


    static mapping = {
        id column: "BANC_SQ_BANCO", generator: "assigned"
        nome column: "BANC_NM_BANCO"
        removido column: "BANC_IN_REMOVIDO"
        codigo column: "BANC_CD_BANCO"
        enderecoEletronico column: "BANC_TX_ENDERECO_ELETRONICO"
        dataCarga column: "BANC_DT_CARGA"
        version false
    }

    static constraints = {
        nome maxSize: 80
        removido maxSize: 1
        codigo maxSize: 10
        enderecoEletronico nullable: true, maxSize: 100
    }
}