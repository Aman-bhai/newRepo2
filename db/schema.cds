using { managed } from '@sap/cds/common';

namespace my.emp;


entity Employees : managed {
    key ID        : UUID;

    @Common.Label: 'First Name'
    firstName     : String(50);

    @Common.Label: 'Last Name'
    lastName      : String(50);

    @Common.Label: 'Email'
    email         : String(100);

    @Common.Label: 'Phone'
    phone         : String(20);

    @Common.Label: 'Salary'
    salary        : Decimal(10,2);

    @Common.Label: 'Hire Date'
    hireDate      : Date;

    @Common.Label: 'Department'
    department    : String(20);
}
