<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="departmanekle.aspx.cs" Inherits="DinamikSite_PersonelGiriş.departmanekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="headerwrap">
        <div class="container">
            <div class="row centered">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="form-group">

                        <div class="input-group">
                            <div class="input-group-addon">Departman Ekle</div>

                            <asp:TextBox class="form-control" placeholder="Örneğim: Güvenlik" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Label ID="Label_uyari" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Bu alan boş geçilemez"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Kaydet" OnClick="Button1_Click1" />

                </div>
            </div>
        </div>
    </div>
</asp:Content>
