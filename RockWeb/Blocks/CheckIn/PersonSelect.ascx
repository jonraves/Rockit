<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PersonSelect.ascx.cs" Inherits="RockWeb.Blocks.CheckIn.PersonSelect" %>
<asp:UpdatePanel ID="upContent" runat="server">
<ContentTemplate>

    <Rock:ModalAlert ID="maWarning" runat="server" />


    <div class="checkin-header">
        <h1><asp:Literal ID="lFamilyName" runat="server"></asp:Literal></h1>
    </div>
                
    <div class="checkin-body">
        
        <div class="checkin-scroll-panel">
            <div class="scroller">

                <div class="control-group checkin-body-container">
                    <label class="control-label">Select Person</label>
                    <div class="controls">
                        <asp:Repeater ID="rSelection" runat="server" OnItemCommand="rSelection_ItemCommand" OnItemDataBound="rSelection_ItemDataBound">
                            <ItemTemplate>
                                <Rock:BootstrapButton ID="lbSelect" runat="server" Text='<%# Container.DataItem.ToString() %>' CommandArgument='<%# Eval("Person.Id") %>' CssClass="btn btn-primary btn-large btn-block btn-checkin-select" DataLoadingText="Loading..." />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>
        </div>

    </div>
        
   

    <div class="checkin-footer">   
        <div class="checkin-actions">
            <asp:LinkButton CssClass="btn btn-default" ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" />
            <asp:LinkButton CssClass="btn btn-default" ID="lbCancel" runat="server" OnClick="lbCancel_Click" Text="Cancel" />
        </div>
    </div>

    <div id="npcc-scroll">
        <span>SCROLL FOR MORE <i class="fa fa-arrows-v"></i></span>
    </div>

</ContentTemplate>
</asp:UpdatePanel>