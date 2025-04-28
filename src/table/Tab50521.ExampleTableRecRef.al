table 50521 ExampleTableRecRef
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50502; Number; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; Number)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}