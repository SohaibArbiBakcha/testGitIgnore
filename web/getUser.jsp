<%@page import="tools.cnx"%> 
<%@page import="java.sql.ResultSet"%> 
<% String reqU = "select * from sbuser ";
    String nomu = request.getParameter("idnu");
    String lvl = request.getParameter("selstat");
    if (nomu != null) {
        reqU += "where LOWER(nom) like (LOWER('" + nomu + "%'))";
    }
    if (lvl != null) {
        reqU += "where statu like('" + lvl + "')";
    }
    System.out.println(reqU);
    ResultSet rs
            = cnx.getConnexion().createStatement().executeQuery(reqU);
    while (rs.next()) {%>
<tr>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(7)%></td>
    <td>
        <a href="#" onclick="deletefun('<%=rs.getString(2)%>', '<%=rs.getString(3)%>', '<%=rs.getString(1)%>')">
            <button type="button" class="btn btn-danger btn-sm btn-icon">
                <i class="ti-close"></i>
            </button>
        </a>
    </td>
</tr>
<% }%>

<script src="js/Sawl.js" type="text/javascript"></script>
<script>
            const deletefun = (nom, prenom, idu) => {
                //    alert("are u sure you wanna delete eleve " + nom + " " + prenom);
                Swal.fire({
                    title: 'desactiver',
                    text: "êtes-vous sûr de vouloir desactiver " + nom + " " + prenom + "?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonText: 'annuler',
                    confirmButtonText: 'confirmer'
                }).then((result) => {
                    console.log(result);
                    if (result.value) {
                        window.location.replace("http://localhost:8080/2sbplus/deleteUser?idu=" + idu);
                    }
                });

            };
</script>