package grails.phone

import java.time.LocalDate
import java.time.Period
import java.time.ZoneId

class Contact {
    Long id
    String firstName
    String middleName
    String lastName
    Date dateBirth
    String phoneNumber
    String mail

    static constraints = {
        firstName maxSize: 100, nullable: false
        middleName maxSize: 100, nullable: false
        lastName maxSize: 100, nullable: false
        dateBirth nullable: false
        phoneNumber minSize: 11, maxSize: 11, unique: true
        mail email: true, nullable: true
    }

    String getFullName(){
        String.format("%s %s %s", lastName, firstName, middleName)
    }

    int getAge(){
        Period.between(dateBirth.toInstant().atZone(ZoneId.systemDefault()).toLocalDate(), LocalDate.now()).years
    }
}
