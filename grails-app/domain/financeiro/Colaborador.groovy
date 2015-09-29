package financeiro

class Colaborador {
    String nome
    static belongsTo = Equipe
    static constraints = {
    }
}
