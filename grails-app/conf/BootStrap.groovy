import financeiro.Role
import financeiro.User_Role
import financeiro.Usuario

class BootStrap {

    def init = { servletContext ->
        Role administrador = new Role(name: 'Administrador',descricao: "Role de administrador")
        administrador.save flush: true, failOnError: true
        Usuario usuario = new Usuario(nome: 'Leonardo',email: 'lsilva@credilink.com.br',senha: '123456')
        usuario.save flush: true, failOnError: true
        User_Role user_role = new User_Role(usuario: usuario,role:administrador)
        user_role.save flush: true, failOnError: true
    }
    def destroy = {
    }
}
