codeunit 50501 RecordRefProcedure
{
    procedure DynamicFieldChangeUsingRecordRef(TableID: Integer; FieldID: Integer; NewValue: Code[30])
    var
        RecRef: RecordRef;
        FieldRef: FieldRef;
    begin
        RecRef.Open(TableID);
        RecRef.FindFirst();
        FieldRef := RecRef.Field(FieldID);

        FieldRef.Value := NewValue;

        RecRef.Modify();

    end;



}