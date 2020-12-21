page 50121 "Reward Card"
{
    // The page will be of type "Card" and will render as a card.
    PageType = Card;

    // The page will be part of the "Tasks" group of search results.
    UsageCategory = Tasks;

    // The source table shows data from the "Reward" table.
    SourceTable = Reward;

    // The layout describes the visual parts on the page.
    layout
    {
        area(Content)
        {
            group(Reward)
            {
                field("Reward ID"; "Reward ID")
                {
                    // ApplicationArea sets the application area that 
                    // applies to the page field and action controls. 
                    // Setting the property to All means that the control 
                    // will always appear in the user interface.
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of reward that the customer has at this point.';

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;

                }

                field("Minimum Purchase"; "Minimum Purchase")
                {
                    ApplicationArea = All;
                }

                field("Last Modified Date"; "Last Modified Date")
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}