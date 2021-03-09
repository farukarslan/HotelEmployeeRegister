<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="listele.aspx.cs" Inherits="DinamikSite_PersonelGiriş.listele" %>

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
                                                        <li><a href="listele.aspx?depidyolla=<%# Eval("id") %>"><%# Eval("departman_ismi ") %>  </a></li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>


                                        </div>
                                    </div>
                                </div>
                                <!-- ürünleri gösteren repeater -->
                                <div class="col-sm-9  col-md-10 main">
                                    <h2 class="sub-header">
                                        <asp:Label ID="Label_depismiyaz" runat="server" Text="Label"></asp:Label>
                                    </h2>
                                    <div style="width: 1100px;">

                                        <table class="table table-striped table-bordered table-hover table-condensed">

                                            <asp:Repeater ID="Repeater_personelliste" runat="server">
                                                <ItemTemplate>
                                                    <div>
                                                        <table class="table table-bordered">
                                                            <thead>

                                                                <tr class="success">

                                                                    <th><%# Eval("Adı ") %></th>
                                                                    <th><%# Eval("Soyadı") %></th>
                                                                    <th><%# Eval("TCNo") %></th>
                                                                    <th><%# Eval("DogumTarihi ") %></th>
                                                                    <th><%# Eval("DogumYeri") %></th>
                                                                    <th><%# Eval("Cinsiyet") %></th>
                                                                    <th><%# Eval("KanGrubu ") %></th>
                                                                    <th><%# Eval("Adres") %></th>
                                                                    <th><%# Eval("TelNo") %></th>
                                                                    <th>
                                                                        <img style="width: 100px" src="<%# Eval("resim_ismi") %> " /></th>
                                                                    <th>
                                                                        <input type="button" value="Personeli Sil" onclick="confirmDelete(<%#Eval("id")%>)">
                                                                        <br />
                                                                        <br />
                                                                        <a href="guncelle.aspx?personelidyolla=<%# Eval("id")%>">GÜNCELLE </a></th>


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
