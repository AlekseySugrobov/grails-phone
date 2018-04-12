package grails.phone

import org.springframework.web.servlet.ModelAndView

class ImportController {

    def importContactsService

    def index() { }

    /**
     * Чтение файла и сохранение полученных контактов
     * @return
     */
    def upload() {
        List<Contact> contactsForImport = importContactsService.readContacts(request.getFile('file'))
        return new ModelAndView("/import/index",
                [savedContacts: contactsForImport.findAll({it.id != null}),
                 notSavedContacts: contactsForImport.findAll({it.id == null})])
    }
}
