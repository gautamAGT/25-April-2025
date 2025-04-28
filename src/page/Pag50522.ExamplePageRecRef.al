page 50522 ExamplePageRecRef
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ExampleTableRecRef;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Number; Rec.Number)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                Caption = 'Dynamic Field Update';

                trigger OnAction()
                var
                    RecRefProcedure: Codeunit RecordRefProcedure;

                begin
                    RecRefProcedure.DynamicFieldChangeUsingRecordRef(18, 2, 'New Name');

                    message('Field Changed');

                    PAGE.Run(PAGE::"Customer List");
                end;
            }
        }
    }

    var
        myInt: Integer;
}