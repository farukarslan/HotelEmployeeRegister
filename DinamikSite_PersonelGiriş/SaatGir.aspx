<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="SaatGir.aspx.cs" Inherits="DinamikSite_PersonelGiriş.SaatGir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="headerwrap">
        <div class="container">
            <div class="row centered">
                <div style="width: 300px; margin-left: 450px">
                    <table>
                        <tr>
                            <td>
                                <div style="width: 300px" class="input-group-addon">Giriş Saati Giriniz:</div>
                                <asp:TextBox ID="txtGiris" class="form-control" runat="server"></asp:TextBox></td>
                            <td>
                                <div style="width: 300px" class="input-group-addon">Çıkış Saati Giriniz:</div>
                                <asp:TextBox ID="txtCikis" class="form-control" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>

                </div>
                <asp:Button ID="btnUygula" class="btn btn-primary" runat="server" Text="Kaydet" OnClick="btnUygula_Click" />
            </div>
        </div>
    </div>
</asp:Content>
