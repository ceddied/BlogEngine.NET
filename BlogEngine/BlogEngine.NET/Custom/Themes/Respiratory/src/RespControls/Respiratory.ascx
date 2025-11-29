<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.UI.UserControl" %>
<%@ Register Src="~/Custom/Themes/Respiratory/src/RespControls/OxygenationTable.ascx" TagPrefix="uc1" TagName="OxygenationTable" %>

<link href="Custom/Themes/Respiratory/src/css/RespToolStyle-min.css" rel="stylesheet" type="text/css" />
<asp:Panel ID="pnlInput" runat="server" GroupingText="Enter Data:" CssClass="left pnlLeft">
    <label for="ddGender">Select Gender:</label>
    <select name="ddGender" class="field" id="ddGender" onchange="respiratoryCalcs(this.form);">
        <option value="male">Male</option>
        <option value="female">Female</option>
    </select>
    <br>
    <label for="ddUnits">Select Units:</label>
    <select class="field" id="ddUnits" onchange="respiratoryCalcs(this.form);">
        <option selected="selected">inches</option>
        <option>cms</option>
    </select>
    <br>
    <label for="txtHeight">Enter height:</label>
    <input id="txtHeight" onkeyup="clearOut()">
    <br>
    <br>
    <input id="calculateVt" onclick="respiratoryCalcs(this.form);" type="button" value="Calculate">
</asp:Panel>
<asp:Panel ID="pnlOutput" runat="server" CssClass="left pnlRight">
    <fieldset>
        <legend>Patient Values:</legend>
        <div id="outPut" style="font-size: 21px">
        </div>
    </fieldset>
</asp:Panel>
<div class="clear"></div>
<script type="text/javascript" src="Custom/Themes/Respiratory/src/js/RespiratoryTools-min.js" defer></script>
