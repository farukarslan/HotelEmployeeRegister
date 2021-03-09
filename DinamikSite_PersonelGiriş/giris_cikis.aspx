<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="giris_cikis.aspx.cs" Inherits="DinamikSite_PersonelGiriş.giris_cikis" %>

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
                                    <div style="margin-left: 0px;">
                                        <div style="float: left">
                                            <ul class="nav nav-sidebar">
                                                <asp:Repeater ID="Repeater_departman" runat="server">
                                                    <ItemTemplate>
                                                        <li><a href="giris_cikis.aspx?depidyolla=<%# Eval("id") %>"><%# Eval("departman_ismi ") %>  </a></li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>


                                        </div>
                                    </div>
                                </div>

                                <!--tarih-->
                                <br />
                                <asp:Label ID="tarih" runat="server" Text=""></asp:Label>

                                <!-- ürünleri gösteren repeater -->
                                <div class="col-sm-9  col-md-10 main">
                                    <h2 class="sub-header">
                                        <asp:Label ID="Label_depismiyaz" runat="server" Text=""></asp:Label>
                                    </h2>
                                    <div style="width: 500px; margin-left: 300px">

                                        <table class="table table-striped table-bordered table-hover table-condensed">

                                            <asp:Repeater ID="Repeater_personelliste" runat="server">
                                                <ItemTemplate>
                                                    <div>
                                                        <table class="table table-bordered">
                                                            <thead>

                                                                <tr class="success">

                                                                    <th><%# Eval("Adı ") %></th>
                                                                    <th><%# Eval("Soyadı") %></th>
                                                                    <td>
                                                                        <div class="input-group-addon">Giriş Saati:</div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="input-group-addon">Çıkış Saati:</div>
                                                                    </td>
                                                                    <td>
                                                                        <a href="SaatGir.aspx?personelid=<%#Eval("id") %>" class="btn btn-primary">Güncelle</a>
                                                                    </td>

                                                                </tr>

                                                            </thead>

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
