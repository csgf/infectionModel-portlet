<%
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<%
  // Gets the current timestamp
  java.util.Date date = new java.util.Date();
%>

<%
// Below the descriptive area of the REPAST simulation web form 
%>
<table>
    <tr>
        <td valign="top">
            <img align="left" style="padding:10px 10px;" src="<%=renderRequest.getContextPath()%>/images/Repast_logo_100h.png" />
        </td>
        <td>
            This is an example of an <b>Agent-Based Simulation Infection Model</b> implemented in <b>Repast Simphony</b>. The aim of the model is to study the behaviour of infections with an annual outbreak
            with the appropriate input data. it can be further used in the field of health economics
            to study the cost effectiveness of various infection preventive strategies.

            <ul>

                <li>Use the <b>Simulation Period</b> input field to specify how many years the simulation will run for.</li>
                <li>Use the <b>Recovered Count</b> input field to specify the initial healthy population. Healthy population have immunity and cannot be infected immediately. However, after a number of contacts with infected population,
                    they lose their immunity and become susceptible to infection.</li>

                <li>Use the <b>infected count</b> input field to specify the initial infected population. Infected population can infect susceptible population upon contacting them. They recover after a period of time and become healthy.</li>

                <li>Use the <b>Susceptible Count</b> input field for the initial susceptible population. Susceptible population can be infected when contacted by infected population. If more than one susceptible agent are in the proximity of an infected agent, 
                    only one will be infected.</li>

                <li>The output of the simulation is the number of each population, i.e <b>Recovered</b>, <b>Infected</b> and <b>Susceptible</b> population for each simulation time unit.</li>

            </ul>
            Please fill the following form and then press the <b>'SUBMIT'</b> button to launch this application.<br>
            Requested inputs are:
        </td>
    </tr>
</table align="center">
<%
// Below the application submission web form 
//
// The <form> tag contains a portlet parameter value called 'PortletStatus' the value of this item
// will be read by the processAction portlet method which then assigns a proper view mode before
// the call to the doView method.
// PortletStatus values can range accordingly to values defined into Enum type: Actions
// The processAction method will assign a view mode accordingly to the values defined into
// the Enum type: Views. This value will be assigned calling the function: setRenderParameter
//
%>
<center>

    <p><b>Simulation Parameters</b></p>

    <form  action="<portlet:actionURL portletMode="view"><portlet:param name="PortletStatus" value="ACTION_SUBMIT"/></portlet:actionURL>" method="post">

        <table>
            
            <tr>
                <td style="width: 30%"><b>Simulation Period (years)</b></td>
            <td colspan="2">
                <select id="simulationPeriod"style="width: 15%" onchange="setSimulationPeriod()">
                  <option value="20">20</option>
                </select>                
                <select id="simulationPeriod"style="width: 15%" onchange="setSimulationPeriod()">
                  <option value="20">20</option>
                </select>
                <select id="simulationPeriod"style="width: 15%" onchange="setSimulationPeriod()">
                  <option value="20">20</option>
                </select>
                <select id="simulationPeriod"style="width: 15%" onchange="setSimulationPeriod()">
                  <option value="20">20</option>
                </select>
                <select id="simulationPeriod"style="width: 15%" onchange="setSimulationPeriod()">
                  <option value="20">20</option>
                </select>
                
                <input type="text" id="inputValueId" name="inputValue" hidden/>
            </td>
            </tr>
            
           
            <tr>
                <td style="width: 30%"><b>Recovered Count</b></td>
            <td colspan="2">
                <select id="recoveredCount"style="width: 15%" onchange="setRecoveredCount()">
                    <option value="0">0</option>
                </select>
                <select id="recoveredCount"style="width: 15%" onchange="setRecoveredCount()">
                    <option value="0">0</option>
                </select>
                <select id="recoveredCount"style="width: 15%" onchange="setRecoveredCount()">
                    <option value="0">0</option>
                </select>
                <select id="recoveredCount"style="width: 15%" onchange="setRecoveredCount()">
                    <option value="0">0</option>
                </select>
                <select id="recoveredCount"style="width: 15%" onchange="setRecoveredCount()">
                    <option value="0">0</option>
                </select>
                
                <input type="text" id="inputValueId2" name="inputValue2" hidden/>
            </td>
            </tr>
            
            <tr>
                <td style="width: 30%"><b>Infected Count</b></td>
            <td colspan="2">
                <select id="infectedCount"style="width: 15%" onchange="setInfectedCount()">
                    <option value="20">20</option>
                </select>
                <select id="infectedCount"style="width: 15%" onchange="setInfectedCount()">
                    <option value="20">20</option>
                </select>
                <select id="infectedCount"style="width: 15%" onchange="setInfectedCount()">
                    <option value="10">10</option>
                </select>
                <select id="infectedCount"style="width: 15%" onchange="setInfectedCount()">
                    <option value="10">10</option>
                </select>
                <select id="infectedCount"style="width: 15%" onchange="setInfectedCount()">
                    <option value="10">10</option>
                </select>
               
                <input type="text" id="inputValueId3" name="inputValue3" hidden/>
            </td>
            </tr>
            
            <tr>
                <td style="width: 30%"><b>Susceptible Count</b></td>
            <td colspan="2">
                <select id="susceptibleCount"style="width: 15%" onchange="setSusceptibleCount()">
                    <option value="1500">1500</option>
                </select>
                <select id="susceptibleCount"style="width: 15%" onchange="setSusceptibleCount()">
                    <option value="2000">2000</option>
                </select>
                <select id="susceptibleCount"style="width: 15%" onchange="setSusceptibleCount()">
                    <option value="1500">1500</option>
                </select>
                <select id="susceptibleCount"style="width: 15%" onchange="setSusceptibleCount()">
                    <option value="2000">2000</option>
                </select>
                <select id="susceptibleCount"style="width: 15%" onchange="setSusceptibleCount()">
                    <option value="3000">3000</option>
                </select>
                
                <input type="text" id="inputValueId4" name="inputValue4" hidden/>
            </td>
            </tr>
  
            <tr> 
                <td style="width: 30%"><b>Simulation identifier</b></td>
                <td colspan="2"><input type="text" id="jobIdentifierId" name="JobIdentifier" placeholder="Repast simulation..." onClick="disableField()" style="width: 77%"/></td>
            </tr>
            <tr>
                <td colspan="3"><hr/></td>
            </tr>
            <tr>
               
                <td><center><p><input type="button" value="SUBMIT" onClick="preSubmit()" style="width: 40%"/></p></center></td>
                <td><center><p><input type="reset" value="RESET" style="width: 20%"/></p></center></td>
            </tr>
        </table>

    </form>
</center>

<script type="text/javascript">
    function preSubmit() {
        var jobIdentifier = document.getElementById('jobIdentifierId');
        var state_jobIdentifier = false;
        var inputValue = document.getElementById('inputValueId');
        var inputValue2 = document.getElementById('inputValueId2');
        var inputValue3 = document.getElementById('inputValueId3');
        var inputValue4 = document.getElementById('inputValueId4');
        var missingFields = "";

        if (inputValue.value === "")
            missingFields += "\nSimulation Period";
        if (inputValue2.value === "")
            missingFields += "\nRecovered Count";
        if (inputValue3.value === "")
            missingFields += "\nInfected Count";
        if (inputValue4.value === "")
            missingFields += "\nSusceptible Count";

        if (jobIdentifier.value === "")
            state_jobIdentifier = true;

        if (state_jobIdentifier)
            missingFields += "\nJob identifier";
        if (missingFields === "") {
//            alert("Ready to submit");
            document.forms[0].submit();
        }
        else {
            alert("You cannot send an inconsistent job submission!\nMissing fields:\n" + missingFields);
        }
    }

    
        function setSimulationPeriod() {
        var x = document.getElementById("simulationPeriod").value;
        document.getElementById("inputValueId").value = x;
    }
    
        function setRecoveredCount() {
        var x = document.getElementById("recoveredCount").value;
        document.getElementById("inputValueId2").value = x;
    }
    
        function setInfectedCount() {
        var x = document.getElementById("infectedCount").value;
        document.getElementById("inputValueId3").value = x;
    }
    
        function setSusceptibleCount() {
        var x = document.getElementById("susceptibleCount").value;
        document.getElementById("inputValueId4").value = x;
    }
    
    function disableField() {
        
        var jobIdentifier = document.getElementById('jobIdentifierId');
        
        document.getElementById("jobIdentifierId").disabled = true;
        
        jobIdentifier.value += "Repast Demo Simulation: " + currentTime.getDate() + "/" + (currentTime.getMonth() + 1) + "/" + currentTime.getFullYear() + " - " + currentTime.getHours() + ":" + currentTime.getMinutes() + ":" + currentTime.getSeconds();
}
    
</script>
