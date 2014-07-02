<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profil.aspx.cs" Inherits="profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        input[type='checkbox']{

    /* Hide the input, but have it still be clickable */
    opacity: 0;

    float: left;
    width: 18px;
}
        input[type='checkbox'] + label {
    margin: 0;
    clear: none;

    /* Left padding makes room for image */
    padding: 5px 0 4px 24px;

    /* Make look clickable because they are */
    cursor: pointer;

    background-color: aquamarine;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" Runat="Server">
    <asp:Repeater ID="repeater_brugere" runat="server">
        <ItemTemplate>
            <article>
                BrugerNavn: <%#Eval("bruger_username") %><br />
                BrugerRolle:<%#Eval("bruger_navn") %><hr /></article>
        </ItemTemplate>
    </asp:Repeater>
    <section>
        <h2>Rolle visning</h2>
    Vælg at vise aktuelle brugere og deres rolle, ved at trykke på knappen<br />
        <asp:RadioButtonList ID="CheckBoxListRoles" runat="server" AutoPostBack="True" RepeatColumns="3">
            <asp:ListItem Value="1">Admins</asp:ListItem>
            <asp:ListItem Value="2">Mods</asp:ListItem>
            <asp:ListItem Value="3">Users</asp:ListItem>
        </asp:RadioButtonList>
        </section>
</asp:Content>

