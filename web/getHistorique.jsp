<!--
<%@page import="tools.cnx"%>
<%@page import="java.sql.ResultSet"%>

<%
    String req = "select e.ideleve , e.nom , e.prenom , n.nv_scolaire from eleve e, niveau_scolaire n where e.idnv=n.idnv ";
    String nom = request.getParameter("idn");
    String lvl = request.getParameter("sellvl");
    if (nom != null) {
        req += "and LOWER(e.nom) like (LOWER('" + nom + "%'))";

    }
    if (lvl != null) {
        req += "and e.idnv like('" + lvl + "')";
    }

    System.out.println(req);

    ResultSet rs = cnx.getConnexion().createStatement().executeQuery(req);

    while (rs.next()) {
%>
<tr>
    <td>
        <%=rs.getString(1)%>
    </td>
    <td>
        <%=rs.getString(2)%>
    </td>
    <td>
        <%=rs.getString(3)%> 
    </td>
    <td>
        <%=rs.getString(4)%> 
    </td>
    <td>
        <a href="modifieEleve.jsp">
            <button type="button" class="btn btn-success btn-sm btn-icon">
                <i class="ti-pencil"></i>
            </button>
        </a>
    </td>
    <td>
        <a onclick="deletefun('<%=rs.getString(2)%>', '<%=rs.getString(3)%>', '<%=rs.getString(1)%>', )">
            <button type="button" class="btn btn-danger btn-sm btn-icon">
                <i class="ti-close"></i>
            </button>
        </a>
    </td>
    <td>
        <a href="#">
            <button type="button" class="btn btn-info btn-sm btn-icon">
                <i class="ti-more-alt"></i>
            </button>
        </a>
    </td>
</tr>
<%
    }
%>
<script src="js/Sawl.js" type="text/javascript"></script>
<script>
            const deletefun = (nom, prenom, ide) => {
               //    alert("are u sure you wanna delete eleve " + nom + " " + prenom);
                Swal.fire({
                    title: 'Are you sure?',
                    text: "you wanna delete eleve " + nom + " " + prenom,
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    console.log(result);
                    if (result.value) {
                        window.location.replace("http://localhost:8080/2sbplus/deleteEleve?ide="+ide);
                    }
                });
                
            };
</script>-->
