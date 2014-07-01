<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="db_selects.aspx.cs" Inherits="db_selects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="repeater_brugere" runat="server">
        <ItemTemplate>
            <article>
                BrugerNavn: <%#Eval("bruger_username") %><br />
                BrugerRolle:<%#Eval("bruger_navn") %><hr />
            </article>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

