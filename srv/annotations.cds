using my.emp as my from '../db/schema';

annotate my.Employees with @UI: {

    HeaderInfo: {
        TypeName: 'Employee',
        TypeNamePlural: 'Employees',
        Title: { Value: firstName },
        Description: { Value: lastName }
    },

    LineItem: [
        { Value: firstName },
        { Value: lastName },
        { Value: email },
        { Value: phone },
        { Value: department },
        { Value: salary },
        { Value: hireDate }
    ],

    /* ✅ Section 1 */
    FieldGroup #Contact: {
        Label: 'Contact Information',
        Data: [
            { Value: firstName },
            { Value: lastName },
            { Value: email },
            { Value: phone }
        ]
    },

    /* ✅ Section 2 */
    FieldGroup #Salary: {
        Label: 'Salary Details',
        Data: [
            { Value: salary },
            { Value: hireDate }
        ]
    },

    /* ✅ Section 3 */
    FieldGroup #Other: {
        Label: 'Other Information',
        Data: [
            { Value: department }
        ]
    }

};

/* ✅ VERY IMPORTANT: separate Facets annotation */
annotate my.Employees with @UI.Facets: [
    {
        $Type: 'UI.ReferenceFacet',
        Label: 'Contact Info',
        Target: '@UI.FieldGroup#Contact'
    },
    {
        $Type: 'UI.ReferenceFacet',
        Label: 'Salary Info',
        Target: '@UI.FieldGroup#Salary'
    },
    {
        $Type: 'UI.ReferenceFacet',
        Label: 'Other Info',
        Target: '@UI.FieldGroup#Other'
    }
];