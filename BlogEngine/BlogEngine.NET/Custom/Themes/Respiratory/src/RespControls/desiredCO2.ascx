<%@ control language="C#" autoeventwireup="true" inherits="System.Web.UI.UserControl" %>
<asp:panel id="pnlInput" runat="server" groupingtext="Enter Data:" cssclass="left pnlLeft">
    <label for="txtCurrentCO2">Enter Current PaCO<sub>2</sub> from ABG:</label>
    <input id="txtCurrentCO2" onkeyup="clearOut()" />
    <br />
    <label for="txtDesiredCO2">Enter Desired PaCO<sub>2</sub>:</label>
    <input id="txtDesiredCO2" onkeyup="clearOut()" />
    <br />
    <label for="txtMV">Enter Current Minute Ventilation:</label>
    <input id="txtMV" onkeyup="clearOut()" />
    <br />
    <br />
    <input id="calculateVt" type="button" value="Calculate" onclick="calcDesiredPaCO2(this.form);" />
</asp:panel>
<asp:panel id="pnlOutput" runat="server" cssclass="left pnlRight">
    <fieldset>
        <legend>Patient Values:</legend>
        <div id="outPut">
        </div>
    </fieldset>
</asp:panel>
<div class="clear"></div>
