import grails.phone.Contact

import java.time.LocalDate

class BootStrap {

    def init = { servletContext ->
        Calendar calendar = Calendar.getInstance();
        calendar.set(1986, 0, 12)
        new Contact(firstName: 'Аркадий', middleName: 'Петрович',
                lastName: 'Загорюев', dateBirth: calendar.getTime(),
                phoneNumber: '9090222254').save()
        calendar.set(1985, 04, 25)
        new Contact(firstName: 'Денис', middleName: 'Иванович',
                lastName: 'Жарков', dateBirth: calendar.getTime(),
                phoneNumber: 9128815527).save()
        calendar.set(1987, 02, 12)
        new Contact(firstName: 'Кирилл', middleName: 'Степанович',
                lastName: 'Новоселов', dateBirth: calendar.getTime(),
                phoneNumber: 9811925390).save()
        calendar.set(1977, 07, 15)
        new Contact(firstName: 'Роман', middleName: 'Олегович',
                lastName: 'Шульга', dateBirth: calendar.getTime(),
                phoneNumber: 9811925390).save()
    }
    def destroy = {
    }
}
