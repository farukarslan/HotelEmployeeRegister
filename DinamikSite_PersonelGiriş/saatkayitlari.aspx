<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeFile="saatkayitlari.aspx.cs" Inherits="DinamikSite_PersonelGiriş.saatkayitlari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="headerwrap">
        <div <%--class="container"--%>>
            <div <%--class="row centered"--%>>
                <div <%--class="col-lg-8 col-lg-offset-2"--%>>
                    <div class="form-group">

                        <!-- kategorileri gösteren repeater -->
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-3 col-md-2 sidebar">
                                    <div style="margin-left: 30px;">
                                        <div style="float: left">
                                            <ul class="nav nav-sidebar">
                                                <asp:Repeater ID="Repeater_departman" runat="server">
                                                    <ItemTemplate>
                                                        <li><a href="saatkayitlari.aspx?depidyolla=<%# Eval("id") %>"><%# Eval("departman_ismi ") %>  </a></li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>


                                        </div>
                                    </div>
                                </div>
                                <!-- ürünleri gösteren repeater -->
                                <div class="col-sm-9  col-md-10 main">
                                    <h2 class="sub-header">
                                        <asp:Label ID="Label_depismiyaz" runat="server" Text=""></asp:Label>
                                    </h2>
                                    <div style="width: 700px;">

                                        <table class="table table-striped table-bordered table-hover table-condensed">

                                            <asp:Repeater ID="Repeater_personelliste" runat="server">
                                                <ItemTemplate>
                                                    <div>
                                                        <table class="table table-bordered">
                                                            <tr class="success">
                                                                <th><%# Eval("Adı ") %> <%# Eval("Soyadı") %>;</th>
                                                                <tr class="success">
                                                                    <td>Personel Giriş Saati:</td>
                                                                    <td><%# Eval("per_giris") %></td>
                                                                    <td>Personel Çıkış Saati:</td>
                                                                    <td><%# Eval("per_cikis") %></td>
                                                                </tr>
                                                        </table>
                                                    </div>
                                                </ItemTemplate>

                                            </asp:Repeater>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
