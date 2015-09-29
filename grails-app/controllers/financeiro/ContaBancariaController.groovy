package financeiro


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContaBancariaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ContaBancaria.list(params), model: [contaBancariaInstanceCount: ContaBancaria.count()]
    }

    def show(ContaBancaria contaBancariaInstance) {
        respond contaBancariaInstance
    }

    def create() {
        respond new ContaBancaria(params)
    }

    @Transactional
    def save(ContaBancaria contaBancariaInstance) {
        if (contaBancariaInstance == null) {
            notFound()
            return
        }

        if (contaBancariaInstance.hasErrors()) {
            respond contaBancariaInstance.errors, view: 'create'
            return
        }

        contaBancariaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contaBancaria.label', default: 'ContaBancaria'), contaBancariaInstance.id])
                redirect contaBancariaInstance
            }
            '*' { respond contaBancariaInstance, [status: CREATED] }
        }
    }

    def edit(ContaBancaria contaBancariaInstance) {
        respond contaBancariaInstance
    }

    @Transactional
    def update(ContaBancaria contaBancariaInstance) {
        if (contaBancariaInstance == null) {
            notFound()
            return
        }

        if (contaBancariaInstance.hasErrors()) {
            respond contaBancariaInstance.errors, view: 'edit'
            return
        }

        contaBancariaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ContaBancaria.label', default: 'ContaBancaria'), contaBancariaInstance.id])
                redirect contaBancariaInstance
            }
            '*' { respond contaBancariaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ContaBancaria contaBancariaInstance) {

        if (contaBancariaInstance == null) {
            notFound()
            return
        }

        contaBancariaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ContaBancaria.label', default: 'ContaBancaria'), contaBancariaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contaBancaria.label', default: 'ContaBancaria'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
