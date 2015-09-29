package financeiro

class Equipe {
    String nome

    static hasMany = [colaborador:Colaborador]

    static constraints = {
    }
}
