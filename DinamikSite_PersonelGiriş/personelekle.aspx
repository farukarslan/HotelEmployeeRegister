<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="personelekle.aspx.cs" Inherits="DinamikSite_PersonelGiriş.personelekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="headerwrap">
        <div class="container">
            <div class="row centered">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="form-group">
                        <table>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                            </td>
                        </table>

                        <br />
                        <div class="form-group">
                            <div class="input-group">
                                <table>
                                    <tr>
                                        <td>
                                            <div class="input-group-addon">Personel Adı:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_ad" placeholder="Örneğin Yasin" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <div class="input-group-addon">Personel Soyadı:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_soyad" placeholder="Örneğin Çakır" runat="server"></asp:TextBox></td>
                                        <td>
                                            <div class="input-group-addon">TC Kimlik No:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_kimlikno" placeholder="Örneğin 38077919284" runat="server"></asp:TextBox></td>
                                        <td>
                                            <div class="input-group-addon">Dogum Tarihi:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_dogumtarih" placeholder="Örneğin 2000" runat="server"></asp:TextBox></td>
                                        <td>
                                            <div class="input-group-addon">Doğum Yeri:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_dogumyeri" placeholder="Örneğin İstanbul" runat="server"></asp:TextBox></td>
                                        <td>
                                            <div class="input-group-addon">Cinsiyet:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_cinsiyet" placeholder="Örneğin Erkek" runat="server"></asp:TextBox></td>
                                        <td>
                                            <div class="input-group-addon">Kan grubu:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_kangrup" placeholder="Örneğin A rh(+)" runat="server"></asp:TextBox></td>
                                        <td>
                                            <div class="input-group-addon">Adres:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_adres" placeholder="Örneğin Tuzla" runat="server"></asp:TextBox></td>
                                        <td>
                                            <div class="input-group-addon">Tel No:</div>
                                            <asp:TextBox class="form-control" ID="TextBox_telno" placeholder="Örneğin 5349668329" runat="server"></asp:TextBox></td>
                                    </tr>

                                </table>


                            </div>
                        </div>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Kaydet" />


                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                    </div>
                </div>
            </div>
        </div>
</asp:Content>
