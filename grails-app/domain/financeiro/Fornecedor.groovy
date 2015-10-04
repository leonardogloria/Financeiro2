package financeiro

class Fornecedor {

    String nome
    String cnpj

    Endereco endereco
    static  embedded = ['endereco']

    static constraints = {
    }
}
