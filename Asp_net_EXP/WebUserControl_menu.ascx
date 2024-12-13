<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl_menu.ascx.cs"
    Inherits="Asp_net_EXP.WebUserControl_menu" %>
<style>
    ul
    {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #333;
    }
    
    li
    {
        float: left;
    }
    
    li a
    {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    
    li a:hover
    {
        background-color: #111;
    }
</style>
<ul>
    <li><a class="active" href="M_page1.aspx">Page1</a></li>
    <li><a href="M_page2.aspx">Page2</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#about">About</a></li>
</ul>
