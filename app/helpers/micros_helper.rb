module MicrosHelper
       def comentarios(micros)
         comentarios =  "<table id=\"tbl_micros\" border=\"1\" width=\"600\" cellpadding=\"1\">"
         comentarios << "  <tr>"
         comentarios << "    <td  colspan=\"7\" align=\"center\">Micros</td>"
         comentarios << "  </tr>"
         comentarios << "  <tr>"
         comentarios << "    <td width=\"20\"  align=\"center\">Ordem</td>"
         comentarios << "    <td width=\"160\" align=\"center\">Nome da Micro</td>"
         comentarios << "    <td width=\"200\" align=\"center\">Nome SEO</td>"
         comentarios << "    <td width=\"20\"  align=\"center\">Visivel</td>"
         comentarios << "    <td colspan=\"4\" width=\"180\" align=\"center\">Ação</td>"
         comentarios << "  </tr>"

         comentarios << render(:partial=>"/micros/lista_micros", :locals=>{:micros=>micros}) unless micros.empty?

         comentarios << "</table>"
     end
end
