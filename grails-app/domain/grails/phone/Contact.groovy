package grails.phone

class Contact {

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
        phoneNumber minSize: 10, maxSize: 10
        mail email: true, nullable: true
    }
}
