﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="listcompany.aspx.cs" Inherits="listcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Company Information
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container" style=" background-color: rgba(237,237,237,.8); min-height:500px; border-radius:5px;">
            <div class="row" >
                <div class="col-12 col-md-12" style="text-align: center; margin-bottom: 30px; font-size: 40px; padding-top:30px; padding-bottom:15px;">
                    <b>Company Information</b>
                </div>
                 <div class="col-lg-1"></div>
                     <div class="col-lg-3 col-12">
                         <asp:TextBox runat="server" ID="txtSearch" placeholder="Search Company" Height="29px" CssClass="form-control"/>
                     </div>
                     <div class="col-12 col-md-5 col-lg-4">
                    <asp:Button runat="server" ID="btnsearch" CssClass=" btn-primary rounded" Width="100" Height="29px" OnClick="btnsearch_Click" Text="Search"/>     
                     </div>
                <div class="col-lg-2"></div>
                <div class="col-12 col-md-4 col-lg-2" style="text-align:left;">
                    <asp:Button runat="server" ID="btnadduser" CssClass=" btn-primary rounded" Width="100" Height="30px" OnClick="btnaddcompany_Click" Text="Add Company"/>
                </div>
                <div class="col-12 col-md-12 col-lg-12" style="margin-top:30px;">
                    <asp:GridView HeaderStyle-BackColor="#0A6EB2" HeaderStyle-ForeColor="White" runat="server" ID="GV" AutoGenerateColumns="false" CssClass="table border-success table-responsive-lg table-responsive-sm table-responsive-md" OnRowEditing="GV_RowEditing" OnRowDeleting="GV_RowDeleting" OnRowCommand="GV_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr#">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Company_Name" HeaderText="Company Name" />
                            <asp:BoundField DataField="Company_Contact_Number" HeaderText="Contact No" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:linkButton runat="server" ID="edit" Text="Edit"  Width="70px" CommandName="Edit" CommandArgument='<%# Eval("Company_ID") %>' />
                                    <asp:linkbutton runat="server" ID="delete" Text="Delete"   Width="50px" CommandName="Delete" CommandArgument='<%# Eval("Company_ID") %>'  />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                </div>
            </div>

        </div>
</asp:Content>

