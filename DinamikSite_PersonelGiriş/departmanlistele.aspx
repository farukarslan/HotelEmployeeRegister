<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="departmanlistele.aspx.cs" Inherits="DinamikSite_PersonelGiriş.departmanlistele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="headerwrap">
        <div class="container">
            <div class="row centered">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <asp:Repeater ID="Repeater_deplistele" runat="server">
                                <ItemTemplate>
                                    <tr class="success">
                                        <td><%# Eval("id") %></td>
                                        <td><%# Eval("departman_ismi") %></td>
                                        <td>
                                            <input type="button" value="Departman Sil" onclick="confirmDelete(<%#Eval("id")%>)">
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class="warning">
                                        <td><%# Eval("id") %></td>
                                        <td><%# Eval("departman_ismi") %></td>
                                        <td>
                                            <input type="button" value="Departman Sil" onclick="confirmDelete(<%#Eval("id")%>)">
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
