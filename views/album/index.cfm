<cfoutput>
<h1>List of Albums</h1>
    <cfdump var="#prc.data#" />
    <table>
        <tr>
            <th>ID</th>
            <th>TITLE</th>
            <th>OWNER</th>
            <th>&nbsp;</th>

        </tr>
    <cfloop query="#prc.data#">
        <tr>
            <td>#ID#</td>
            <td>#TITLE#</td>
            <td>#OWNER#</td>
            <td>
                <a href="#event.buildLink( 'album.edit.id.#id#' )#" 
                class="btn btn-secondary">Edit</a>

                <a href="#event.buildLink( 'album.delete.id.#id#' )#" 
                class="btn btn-secondary">Delete</a>

            </td>
            
        </tr>
    </cfloop>
    </table>
    <a href="#event.buildLink( 'album.new' )#" 
    class="btn btn-primary">Create New Album</a>
</cfoutput>