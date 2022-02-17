<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="send.aspx.cs" Inherits="DID2.send" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>function appendTheFile (url) {     url = new URL(url)     // se for uma imagem, adicionamos uma imagem     if (url.pathname.match(/\.(jpe?g|png|svg|webp|gif)/)) {       let img = document.createElement('img')       img.src = url.toString()       document.getElementById('container').appendChild(img)     } else {       // se não for uma imagem, usamos um iframe       let iframe = document.createElement('iframe')       iframe.src = url.toString()       document.getElementById('container').appendChild(iframe)     }     // iframes funcionam para qualquer arquivo praticamente,     // mas poderíamos tratar outros formatos de arquivo, como vídeo, áudio, etc. }  document.getElementById('add-file-btn').addEventListener('click', event => {   // perguntamos qual a URL para o usuário   let answer = window.prompt('Qual o endereço?')   // usamos uma expressão regular para verificarmos se é uma URL válida   if (answer.match(/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/im)) {     // podemos opcionalmente parsear esta url em um objeto do tipo URL     appendTheFile(url)   } }) </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Enviar</h2>
    <div id='container'></div> <input type='button' value='+' id='add-file-btn' />
</asp:Content>
