package financeiro

class Usuario {

    String email
    String nome
    String senha
    List<Role> roleList

    static constraints = {
    }
    static transients = ['roleList']


}
