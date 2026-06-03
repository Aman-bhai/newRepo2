using { my.emp as db } from '../db/schema';

service EService {


    @odata.draft.enabled

    entity Employees as projection on db.Employees;

}