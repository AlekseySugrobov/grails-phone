import grails.phone.Contact

import java.text.SimpleDateFormat
import java.time.LocalDate
import java.time.format.DateTimeFormatter

class BootStrap {

    def init = { servletContext ->
        def sdf = new SimpleDateFormat("dd.MM.yyyy")
        new Contact(firstName: 'Аркадий', middleName: 'Петрович',
                lastName: 'Загорюев', dateBirth: sdf.parse("12.01.1986"),
                phoneNumber: 79090222254).save()
        new Contact(firstName: 'Денис', middleName: 'Иванович',
                lastName: 'Жарков', dateBirth: sdf.parse("05.02.1985"),
                phoneNumber: 79128815527).save()
        new Contact(firstName: 'Кирилл', middleName: 'Степанович',
                lastName: 'Новоселов', dateBirth: sdf.parse("12.06.1956"),
                phoneNumber: 79811925390).save()
        new Contact(firstName: 'Роман', middleName: 'Олегович',
                lastName: 'Шульга', dateBirth: sdf.parse("23.09.1986"),
                phoneNumber: 79811925390).save()
    }
    def destroy = {
    }
}
