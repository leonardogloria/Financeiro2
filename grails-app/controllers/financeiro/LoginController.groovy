package financeiro

class LoginController {

    def index() { }
    def login() {
        render(view: "login")

    }
    def doLogin(Usuario usuarioInstance){
        println "senha " +  usuarioInstance.senha
        println "email" + usuarioInstance.email

        def usuario = Usuario.findByEmailAndSenha( usuarioInstance.email , usuarioInstance.senha)
        if(usuario){
            def roleList = User_Role.findAllByUsuario(usuario)
            usuario.roleList = roleList

            println "loguei"
        }else{
            println "não loguei"
        }



    }
}
