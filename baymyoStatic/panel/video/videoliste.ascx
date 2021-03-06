﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="videoliste.ascx.cs" Inherits="panel_video_videoliste" %>
<div class="modul-main-box">
    <script type="text/javascript">
        var allCheckBoxSelector = '#<%=dataGrid1.ClientID%> input[id*="chkAll"]:checkbox';
        var checkBoxSelector = '#<%=dataGrid1.ClientID%> input[id*="chkSelected"]:checkbox';

        function ToggleCheckUncheckAllOptionAsNeeded() {
            var totalCheckboxes = $(checkBoxSelector),
            checkedCheckboxes = totalCheckboxes.filter(":checked"),
            noCheckboxesAreChecked = (checkedCheckboxes.length === 0),
            allCheckboxesAreChecked = (totalCheckboxes.length === checkedCheckboxes.length);

            $(allCheckBoxSelector).attr('checked', allCheckboxesAreChecked);
        }

        $(document).ready(function () {
            $(allCheckBoxSelector).live('click', function () {
                $(checkBoxSelector).attr('checked', $(this).is(':checked'));
                ToggleCheckUncheckAllOptionAsNeeded();
            });
            $(checkBoxSelector).live('click', ToggleCheckUncheckAllOptionAsNeeded);
            ToggleCheckUncheckAllOptionAsNeeded();
        });
    </script>
    <div class="job-set">
        <div class="left">
            <asp:Literal ID="pageNumberLiteral" runat="server" Text="..." /></div>
        <div class="right">
            <asp:Button ID="btnSaveChanges" runat="server" Text="Seçilenlere Uygula" CssClass="right"
                OnClick="btnSaveChanges_Click" />
            <asp:DropDownList ID="ddlIslemler" runat="server" CssClass="right" Width="200px">
            </asp:DropDownList>
        </div>
    </div>
    <div class="clear">
    </div>
    <asp:GridView ID="dataGrid1" runat="server" GridLines="None" CssClass="dataGridView"
        AutoGenerateColumns="False" DataKeyNames="ID">
        <RowStyle CssClass="rowStyle" />
        <AlternatingRowStyle CssClass="alternatingRowStyle" />
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox runat="server" ID="chkAll" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="chkSelected" />
                </ItemTemplate>
                <HeaderStyle Width="2%" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle Width="2%" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Resim">
                <HeaderStyle Width="15%" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle Width="15%" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemTemplate>
                    <img src="<%# Settings.ImagesPath + ((!string.IsNullOrEmpty(Eval("ResimUrl").ToString()))? "video/" + Eval("ResimUrl") : "admin-yok.png") %>"
                        style="width: 100%" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Baslik" HeaderText="Başlık" ReadOnly="True">
                <HeaderStyle Width="77%" />
                <ItemStyle Width="77%" />
            </asp:BoundField>
            <asp:TemplateField>
                <HeaderStyle Width="2%" HorizontalAlign="Center" />
                <ItemStyle Width="2%" HorizontalAlign="Center" />
                <HeaderTemplate>
                    <span class="toolTip" title="Yayımlama Durumu">D</span>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Settings.VideoDurum(Eval("Aktif")) %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderStyle Width="2%" HorizontalAlign="Center" />
                <ItemStyle Width="2%" HorizontalAlign="Center" />
                <ItemTemplate>
                    <a href='<%# Settings.CreateLink("video",Eval("ID"),Eval("Baslik")) %>' target="_blank">
                        <%# "<img class=\"toolTip left\" title='" + DataBinder.Eval(Container.DataItem, "Baslik") + " videoyu görüntülemek için tıkla!' src=\"" + Settings.IconsPath + "admin/link.png\"/>"%></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderStyle Width="2%" HorizontalAlign="Center" />
                <ItemStyle Width="2%" HorizontalAlign="Center" />
                <ItemTemplate>
                    <a href='<%# Settings.PanelPath +"?go=video&vid="+ Eval("ID")  %>'>
                        <%# "<img class=\"toolTip left\" title='" + DataBinder.Eval(Container.DataItem, "Baslik") + " videoyu düzeltmek için tıkla!' src=\"" + Settings.IconsPath + "admin/edit.png\"/>"%></a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
