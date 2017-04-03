<tr>
  <td>#</td>
  <td><%= link_to(group.title, group_path(group)) %></td>
  <td><%= render_group_description(group) %></td>
  <td><%= group.user.email %></td>
  <td>
    <% if current_user && current_user == group.user %>
      <%= link_to("Edit", edit_group_path(group), class: "btn btn-sm btn-default")%>
      <%= link_to("Delete", group_path(group),    class: "btn btn-sm btn-default",
                  method: :delete, data: { confirm: "Are you sure?" } )%>
    <% end %>
  </td>

</tr>
