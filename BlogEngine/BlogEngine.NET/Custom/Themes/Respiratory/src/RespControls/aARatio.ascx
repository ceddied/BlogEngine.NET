<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.UI.UserControl" %>
<asp:Panel ID="pnlInput" runat="server" GroupingText="Enter Data:" CssClass="left pnlLeft">
    <label for="txtFIO2">Enter Current FIO2:</label>
    <input id="txtFIO2" onkeyup="clearOut()" />
    <br />
    <br />
    <label for="txtPaCO2">Enter Current PaCO<sub>2</sub> from ABG:</label>
    <input id="txtPaCO2" onkeyup="clearOut()" />
    <br />
    <br />
    <label for="txtPaO2">Enter Current PaO<sub>2</sub> from ABG:</label>
    <input id="txtPaO2" onkeyup="clearOut()" />
    <br />
    <br />
    <input id="calculate_aARatio" type="button" value="Calculate" onclick="calc_aARatio(this.form);" />
</asp:Panel>
<asp:Panel ID="pnlOutput" runat="server" CssClass="left pnlRight">
    <fieldset>
        <legend>Patient Values:</legend>
        <div id="outPut">
        </div>
    </fieldset>
</asp:Panel>
<div class="clear"></div>
