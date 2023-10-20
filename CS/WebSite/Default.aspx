<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Xpo.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>How to update a Boolean field using the ASPxCheckBox in a DataItem template</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="xds"
            KeyFieldName="Oid">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="Oid" RSortOrder="Ascending" />
                <dx:GridViewDataTextColumn FieldName="Title"  />
                <dx:GridViewDataCheckColumn FieldName="Active" >
                    <DataItemTemplate>
                        <dx:ASPxCheckBox ID="chk" runat="server" Value='<%# Eval("Active") %>' OnInit="chk_Init" />
                    </DataItemTemplate>
                </dx:GridViewDataCheckColumn>
            </Columns>
        </dx:ASPxGridView>
    </div>
    <dx:XpoDataSource ID="xds" runat="server" TypeName="MyObject" />
    <dx:ASPxCallback ID="cb" runat="server" ClientInstanceName="cb" OnCallback="cb_Callback" />
    </form>
</body>
</html>
