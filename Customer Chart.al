page 50132 "Test Chart"  // Unique ID and name of the page
{
    PageType = Card;  // The page is a Card type (single-record layout)
    Caption = 'Test Chart';  // What the page will be called
    UsageCategory = Administration;  // Appears in Administration section
    ApplicationArea = All;  // Available in all application areas

    layout
    {
        area(Content)  // Defines the main content area of the page
        {
            usercontrol(Chart; "Microsoft.Dynamics.Nav.Client.BusinessChart")  // Embeds a business chart add-in
            {
                ApplicationArea = All;  // Makes the control available in all app areas

                // Trigger when a data point in the chart is clicked
                trigger DataPointClicked(point: JsonObject)
                var
                    JsonText: Text;
                begin
                    point.WriteTo(JsonText);  // Convert the JSON data point to text
                    Message('%1', JsonText);  // Show it in a message box
                end;

                // Trigger when the add-in/chart is ready to be loaded
                trigger AddInReady()
                var
                    Buffer: Record "Business Chart Buffer" temporary;  // Temporary record to store chart data
                    Customer: Record Customer;  // Customer table reference
                    i: Integer;  // Index for data insertion
                begin
                    Buffer.Initialize();  // Initializes the buffer

                    // Adds a column chart for Sales (index 0)
                    Buffer.AddMeasure('Sales', 1, Buffer."Data Type"::Decimal, Buffer."Chart Type"::Column);

                    // Adds a pie chart for Profit (index 1)
                    Buffer.AddMeasure('Profit', 1, Buffer."Data Type"::Decimal, Buffer."Chart Type"::Pie);

                    // Sets the X-axis of the chart to show Customer Names
                    Buffer.SetXAxis('Customer', Buffer."Data Type"::String);

                    // Loop through customers
                    if Customer.FindSet(false, false) then
                        repeat
                            // Load calculated fields (Sales LCY and Profit LCY)
                            Customer.CalcFields("Sales (LCY)", "Profit (LCY)");

                            // Only include customers with non-zero sales
                            if Customer."Sales (LCY)" <> 0 then begin
                                Buffer.AddColumn(Customer.Name);  // Add customer name to X-axis
                                Buffer.SetValueByIndex(0, i, Customer."Sales (LCY)");  // Set Sales value at index 0
                                Buffer.SetValueByIndex(1, i, Customer."Profit (LCY)"); // Set Profit value at index 1
                                i += 1;  // Move to next index
                            end;
                        until Customer.Next() = 0;

                    // Apply buffer data to the chart control
                    Buffer.Update(CurrPage.Chart);
                end;
            }
        }
    }
}
