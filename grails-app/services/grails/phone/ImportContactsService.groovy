package grails.phone

import grails.transaction.Transactional
import org.mozilla.universalchardet.UniversalDetector

import java.text.ParseException

@Transactional
class ImportContactsService {

    /**
     * Импорт контактов
     * @param file - файл
     * @return список контактов
     */
    def readContacts(def file) {
        List<Contact> contacts = new ArrayList<>()
        def stream = file.inputStream
        def encoding = getEncoding(stream)
        file.getInputStream().getText(encoding).splitEachLine(';') {
            fields ->
                Contact contact = getContactFromFileRow(fields)
                if (contact != null) {
                    contacts.add(contact)
                } else {
                    log.error("cant parse fields: " + fields)
                }
        }
        contacts
    }

    /**
     * Получение кодировки файла
     * @param inputStream
     * @return кодировка
     */
    String getEncoding(def inputStream) {
        byte[] buf = new byte[4096]
        UniversalDetector detector = new UniversalDetector(null)
        int nRead
        while ((nRead = inputStream.read(buf)) > 0 && !detector.isDone()) {
            detector.handleData(buf, 0, nRead)
        }
        detector.dataEnd()

        def encoding = detector.getDetectedCharset()

        return encoding
    }

    /**
     * Формирование контакта из строки
     * @param fields - список элементов после разделения по ;
     * @return контакт
     */
    Contact getContactFromFileRow(List<String> fields) {
        def newContact = null
        try {
            def FIO = fields[1]
            def lastName = FIO.split(' ')[0]
            def firstName = FIO.split(' ')[1]
            String middleName = null
            if (FIO.split(' ').length == 3) {
                middleName = FIO.split(' ')[2]
            }
            def dateBirth = Date.parse("dd.MM.yyyy", fields[2])
            def phoneNumber = fields[3]
            def email = fields[4]
            newContact = new Contact(firstName: firstName, lastName: lastName, middleName: middleName,
                    phoneNumber: phoneNumber, mail: email, dateBirth: dateBirth)
            newContact.save()

        } catch (NullPointerException | ParseException | ArrayIndexOutOfBoundsException ex) {
            ex.printStackTrace()
            log.error("can't create Contact entity")
        }
        newContact
    }
}
