﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="ContentArtikel" ContentPlaceHolderID="ContentPlaceHolder_main" runat="Server">
    <article>
        <header>
            <h1><a href="#top" title="Til top">Dagens spil</a></h1>
            <h2>Tera bliver GRATIS</h2>
            <img src="Site/images/star/star0w5y.png" width="100%" title="Star" class="star" />

        </header>
        <p>
            <img src="site/images/splash/terasplash.jpg" width="48%" height="27.2%" title="Tera - Gratis MMO spil">
            <strong>New "Rising" version of MMORPG to be available without subscription fee next month with no level cap or content restrictions for new players.</strong>
            <br>
            <br>
            En Masse Entertainment's massively multiplayer online role-playing game Tera will be free-to-play when it relaunches at Tera: Rising February 5, it was announced today. Previously, the free-to-play switch was scheduled to take place sometime in February. The new version of the game will not require a subscription fee and new players will not face any content restrictions or a level cap.
				<br>
            <br>
            Though Tera: Rising will be available to play for free, players can use real-world money to purchase various items on an a la carte basis from the in-game marketplace.
				<br>
            <br>
            Past and current Tera subscribers will be awarded permanent "founder" status, which carries numerous exclusive privileges. Those who pay $15 per month for "Elite" status will be granted extra dungeon rewards, 10 bonus quests per day, a daily delivery of items and boosts, an elite mount, in-game store discounts, and waived brokerage registration taxes.
				<br>
            <br>
            A detailed breakdown of Free-versus-Founder-versus-Elite status benefits can be found at the official Tera website.
				<br>
            <br>
            To coincide with the free-to-play business model switch for Tera, new in-game content will be made available. This includes a wave-based dungeon called the Crucible of Flame and a PvP battleground map called Champions' Skyring that "introduces a new way for players to test their skills against each other."
				<br>
            <br>
            Tera is the latest MMO to drop its subscription fee, following Lord of the Rings Online, Age of Conan: Hyborian Adventures, EverQuest II, Aion, and Star Wars: The Old Republic. Bethesda has not said if its upcoming MMO The Elder Scrolls Online will carry a subscription fee, though consultant Nicholas Lovell believes the game will launch with a subscription before going free-to-play.
        </p>

        <%--<?php // [TODO]: Man skal ikke kunne se kommentar-formularen hvis man ikke har lov til at kommentere. ?>--%>

        <form>
            <fieldset>
                <legend>Kommentar</legend>
                <textarea rows="5"></textarea><br>
                <input type="submit" value="Send kommentar">
            </fieldset>
        </form>


        <%--				<?php // [TODO]: Man skal ikke kunne se kommantarer, hvis man ikke har rettigheden. ?>--%>


        <p class="comment">
            <span class="name">syle</span> <span class="day">1 dage siden</span>
            <br>
            <br>
            TERA is actually amazing
						<br>
            <br>
            i never played it before and installed it couple days ago
						<br>
            <br>
            and holy shit was i missing out , this game blows guild wars 2 combat system away , the combat is amazing i lvled my warrior to 25 and the battles i had with basilisks and naga mercenaries were the most fun i had in a LONG TIME
						<br>
            <br>
            this game is worth playing , questing system is simple and u have the objectives nicely displayed on your map , no more searching for some quest items on the web its all there
						<br>
            <br>
            the questing is all about killing stuff , and its fine because its the most fun part of the game anyway
						<br>
            <br>
            also the open word pvp is great i havent seen this type of pvp since wow vanilla days or diablo2 , going hostile on questing ppl or just camping bridges with a friend or two is common thing to see (and actually very easy to avoid too u just switch the district if u dont want to fight , but than again why did u roll on pvp server in the 1st place if u dont expect to be ganked etc :) )
						<br>
            <br>
            anyway this game is awesome and totally worth trying , i might just throw some money at them if they do the free to play model right - and it looks like they are doing it right (not limiting pvp for free to play users and boosting pve refresh rate for premiums)
						<br>
            <br>
            just my 2 cents
						<br>
            <br>
            <a class="share">Del</a>
            <a class="like">Synes om</a>

            <%--						<?php // [TODO]: Man skal ikke kunne trykke "svar" hvis man ikke har lov til at kommentere. ?>--%>

            <a class="reply">Svar</a>
        </p>

        <p class="comment">
            <span class="name">Akijo</span> <span class="day">1 dage siden</span>
            <br>
            <br>
            One of the best MMO I've played yet. And has the best gameplay I've seen in a MMO yet
						<br>
            <br>
            <a class="share">Del</a>
            <a class="like">Synes om</a>

            <%--						<?php // [TODO]: Man skal ikke kunne trykke "svar" hvis man ikke har lov til at kommentere. ?>--%>

            <a class="reply">Svar</a>
        </p>

    </article>


</asp:Content>






