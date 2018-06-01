<cfoutput>
<h1>Liste des utilisateurs</h1>

   
    <cfloop index="i" from="1" to="#prc.qUsers.recordCount#"> 
        <li>#prc.qUsers["id"][i]#   #prc.qUsers["name"][i]# </li> 
    </cfloop>    


</cfoutput>

