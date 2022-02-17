﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="DID2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Faça contato</h2>

    <form action="#" id="contact" name="contact" method="post">

        <p>Preencha os campos abaixo para entrar em contato com a equipe do aplicativo.</p>

        <p class="red center small">Todos os campos são obrigatórios.</p>

        <p>
            <label for="contactName">Seu nome:</label>
            <input type="text" name="contact-name" id="contactName" required minlength="3" class="field valid" value="">
        </p>

        <p>
            <label for="contactEmail">Seu e-mail:</label>
            <input type="email" name="contact-email" id="contactEmail" required class="field valid" value="">
        </p>

        <p>
            <label for="contactSubject">Assunto:</label>
            <input type="text" name="contact-subject" id="contactSubject" required minlength="3" class="field valid" value="">
        </p>

        <p>
            <label for="contactMessage">Mensagem:</label>
            <textarea name="contact-message" id="contactMessage" required minlength="5" class="field valid"></textarea>
        </p>

        <p>
            <button type="submit" name="contact-send" id="contactSend">Enviar</button>
            <span class="small">&larr; Clique somente uma vez.</span>
        </p>

    </form>

    <div id="feedback"></div>

</article>

<aside class="contacts">
    <h3>Mais contatos</h3>
    <p>Conheça nossas redes sociais e outras formas de contato.</p>
    <div class="contact-list"></div>
</asp:Content>
