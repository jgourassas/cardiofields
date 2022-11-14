
mix phx.gen.html Canons Opts_image opts_images image:string 
**A small example how I use it**
 As css I used bulma framework  
<% alias Angio.Canons, as: Query %>

 **the function to select options (Make yours)** 

def select_options(field) do
    first find the id that correspond to the field
    query_a =
      from(
        d in Definition,
        where: d.name == ^field,
        select: d.id
    )
    ids = Angio.Repo.all(query_a)
    total_ids = length(ids)

    # id_num =
    cond do
      total_ids == 1 ->
        id_first = List.first(ids)

        query_b =
          from(
            o in Defs_option,
            where: o.definition_id == ^id_first,
            select: {o.selection_text, o.code},
            order_by: [asc: o.selection_text]
          )

        options = Angio.Repo.all(query_b)
        # ok this one is to know the user encoding of selection
        # as is going to be saved in the database
        # race selected  Asian (15) is saved as 15
        final_options =
          Enum.map(options, fn option ->
            # select_text = elem(opton, 0)

            {elem(option, 0) <>
               "^" <>
               " " <>
               "(" <>
               elem(option, 1) <>
               ")", elem(option, 1)}
          end)

      total_ids > 1 ->
        final_options = ["There are more then one Field with the same name. Please Correct"]

      total_ids == nil ->
        final_options = ["Definition Options - Are Nil"]

      true ->
        final_options = ["Definition Options - Selections Not Found"]
    end
    end

**the function search instructions)**
def search_in_instructions(qname) do
        query =
      from(
        d in Definition,
        where:
          d.name == ^qname and 
                    not is_nil(d.coding_instructions),
        select: [d.coding_instructions],
        limit: 250,
        order_by: [asc: d.name]
      )

    res = Cardiofields.Repo.all(query)
  end

 **In the forms** 
 <div class="column">
        <% s_gender = Query.select_options("patnts_gender") %> 
        <div class="field">
          <label class="label">Gender </label>
            <div class="select is-primary">
            <span class="field_help"></span>
              <%= select(f, :patnts_gender, s_gender, 
                prompt: "---Select---",
                class: "form-control") %>
              <option></option>
            </div>
            <!--select---->
          <!--control---->
        </div>
    </div>

**second example in the form**
<% s_collat_flow_idx_method   =
        Query.select_options("collat_flow_idx_method") %>
  <% i_collat_flow_idx_method =
                raw Query.search_in_instructions("collat_flow_idx_method")%>
 <div class="field">
  <label class="label"> Idx Method </label>
          <div class="control">
            <div class="select is-primary">
              <%= select(f, :collat_flow_idx_method,
s_collat_flow_idx_method,
prompt: "---Select---",
class: "form-control") %>
            </div>
            <%= error_tag f, :collat_flow_idx_method  %>
            <p class="help"><%=i_collat_recipient_seg %></p>
          </div>
          </div>
           </div>
    
<div class="columns">
<div class="column">
<% s_cor_anat_lm_ostium_type = Query.select_options("cor_anat_lm_ostium_type") %>
<% i_cor_anat_lm_ostium_type =
raw  Query.search_in_instructions("cor_anat_lm_ostium_type")%>
 <div class="field">
<label class="label">LM Ostium Types  </label>
<div class="control">
<div class="select is-primary">
<span class="field_help"> </span>
<%= select(f, :cor_anat_lm_ostium_type,
s_cor_anat_lm_ostium_type,
prompt: "---Select---",
class: "form-control") %>
</div>
<p class="help">
<%= i_cor_anat_lm_ostium_type%>
</p>
</div>
</div>

Enjoy Profit 

(John Gourassas / Gkourasas)
