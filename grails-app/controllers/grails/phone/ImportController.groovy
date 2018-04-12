package grails.phone

import org.springframework.web.servlet.ModelAndView

class ImportController {

    def importContactsService

    def index() { }

    def upload() {
        List<Contact> contactsForImport = importContactsService.readContacts(request.getFile('file'))
        List<Contact> savedContacts = contactsForImport.findAll({it.id != null})
        List<Contact> notSavedContacts = contactsForImport.findAll({it.id == null})
        return new ModelAndView("/import/index",
                [savedContacts: savedContacts, notSavedContacts: notSavedContacts])
    }
}
