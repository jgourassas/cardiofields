defmodule Cardiofields.Canons do
  @moduledoc """
  The Canons context.
  """
  import Ecto.Query, warn: false
  alias Cardiofields.Repo

  alias Cardiofields.Canons.Definition
  alias Cardiofields.Canons.Defs_code
  # alias Cardiofields.Canons.Defs_sentence
  alias Cardiofields.Canons.Defs_option

  @doc """
  Returns the list of definitions.

  ## Examples

      iex> list_definitions()
      [%Definition{}, ...]

  """
  def list_definitions(params) do
    _page =
      Definition
      |> Definition.order_by_name()
      |> Repo.paginate(params)

    # Repo.all(Definition)
  end

  @doc """
  Gets a single definition.

  Raises `Ecto.NoResultsError` if the Definition does not exist.

  ## Examples

      iex> get_definition!(123)
      %Definition{}

      iex> get_definition!(456)
      ** (Ecto.NoResultsError)

  """
  def get_definition!(id), do: Repo.get!(Definition, id)

  @doc """
  Creates a definition.

  ## Examples

      iex> create_definition(%{field: value})
      {:ok, %Definition{}}

      iex> create_definition(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_definition(attrs \\ %{}) do
    %Definition{}
    |> Definition.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a definition.

  ## Examples

      iex> update_definition(definition, %{field: new_value})
      {:ok, %Definition{}}

      iex> update_definition(definition, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_definition(%Definition{} = definition, attrs) do
    definition
    |> Definition.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Definition.

  ## Examples

      iex> delete_definition(definition)
      {:ok, %Definition{}}

      iex> delete_definition(definition)
      {:error, %Ecto.Changeset{}}

  """
  def delete_definition(%Definition{} = definition) do
    Repo.delete(definition)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking definition changes.

  ## Examples

      iex> change_definition(definition)
      %Ecto.Changeset{source: %Definition{}}

  """
  def change_definition(%Definition{} = definition) do
    Definition.changeset(definition, %{})
  end

  #############
  def search_a_definition(query, selection) do

    case selection do
      "name" -> search_definition_name(query)
      "table_name" -> search_a_table_name(query)
      "option_name" -> search_a_option_name(query)
      "instruction" -> search_an_instruction(query)
      "field_codes" -> search_a_field_code(query)
      "field_option_codes" -> search_a_field_option_code(query)
      "inserted_after" -> search_inserted_after(query)
      "on_notes" -> search_on_notes(query)
      "on_indexing" -> search_on_indexing(query)
      _ -> ""
    end
  end
  
  ######################3
  
  
  #####################
   def search_definition_name(qname) do
      _query =
      from(
        d in Definition,
        #where: fragment("(?) @@ plainto_tsquery(?)", d.name, ^qname),
         where: fragment("to_tsvector(?) @@ plainto_tsquery(?)", d.name,   ^qname),
        limit: 250,
        order_by: [asc: d.name, asc: d.table_name]
      )
      
  end
  ################3
    ###################### 3
  def search_on_notes(query) do
    from(d in Definition,
      where: fragment("(?) @@ plainto_tsquery(?)", d.notes_tsv, ^query),
      limit: 250,
      # order_by: [desc: d.name]
      order_by: fragment("ts_rank(to_tsvector(?), plainto_tsquery(?)) DESC", d.name, ^query)
    )
  end

  ################# 33
  def search_on_indexing(query) do
    from(d in Definition,
      where: fragment("(?) @@ plainto_tsquery(?)", d.indexing_tsv, ^query),
      limit: 250,
      # order_by: [desc: d.name]
      order_by: fragment("ts_rank(to_tsvector(?), plainto_tsquery(?)) DESC", d.name, ^query)
    )
  end

  ########################
  def search_inserted_after(inserted_date) do
    # IO.puts("--------------updated after")
    # IO.inspect(inserted_date)

    # Get all items published since the last month
    # from p in Post, where: p.published_at >
    # datetime_add(^NaiveDateTime.utc_now(), -1, "month")
    # _query = 
    from(d in Definition,
      # where: d.updated_at < datetime_add(^NaiveDateTime.utc_now(), -1, "month"),
      where: d.inserted_at > ^inserted_date,
      limit: 250,
      order_by: [desc: d.inserted_at]
    )
  end

  ############################
  def search_a_field_code(qcode) do
    from(
      p in Definition,
      join: c in Defs_code,
      where:
        c.definition_id == p.id and c.code == ^qcode and
          not is_nil(c.code),
      limit: 250
    )
  end
###########################33

  @spec search_an_instruction(any) :: Ecto.Query.t()
  def search_an_instruction(qname) do
    _query =
      from(
        d in Definition,
        where: fragment("(?) @@ plainto_tsquery(?)", d.name, ^qname),
        limit: 250,
        order_by: [asc: d.name, asc: d.table_name]
      )
  end

  # SELECT ts_headline('simple', 'This is artificial text',
  # to_tsquery('simple', 'artificial'));

  # select: %{
  #      id: c.id, title: c.title, slug: c.slug, display_date: c.display_date,
  #      rank: fragment("ts_rank_cd(search_vector, ?, 32) AS rank", sq.search_query),
  #      introduction: fragment("ts_headline('english',CONCAT(introduction,' ',main_body), search_query, 'StartSel=,StopSel=,MinWords=50,MaxWords=100') AS headline"),
  #      tags: c.tags
  #    })

  #####################################
  def search_a_table_name(qname) do
    from(
      d in Definition,
      where:
        fragment("(?) @@ plainto_tsquery(?)", d.table_name, ^qname) and
          not is_nil(d.table_name),
      limit: 250,
      order_by: [asc: d.name, asc: d.table_name]
    )
  end

  ######################
  def search_a_option_name(query) do
    from(
      p in Definition,
      join: c in Defs_option,
      # where: c.definition_id  == p.id and c.selection_text == ^query )
      where:
        c.definition_id == p.id and
          fragment("(?) @@ plainto_tsquery(?)", c.selection_text, ^query)
    )
  end

  #####################
  def search_a_support_definition(qname) do
    query =
      from(
        d in Definition,
        where: d.name == ^qname,
        select: d.support_definition,
        limit: 250,
        order_by: [asc: d.name, asc: d.table_name]
      )

    Cardiofields.Repo.all(query)
    # IO.puts("--------------------------")
    # IO.inspect(res)
  end

  ##########################
  def search_an_option_definition(qname) do
    ## In GUI the options are as Asian^ (15). In Database is saved as 15
    ## The string comming from javascript selection is
    ## race=Asian^ (15) so we have to transform because otherwise it founds nothing
    # IO.puts("======")
    # IO.inspect qname ## "relationship=Agent^ (agent)"

    a_field = String.split(qname, "=")
    field = Enum.at(a_field, 0)
    field_2 = Enum.at(a_field, 1)
    a_selected_text = String.split(field_2, "^")
    selected = Enum.at(a_selected_text, 0)

    query_a =
      from(
        d in Definition,
        where: d.name == ^field,
        select: d.id
      )

    id = Cardiofields.Repo.one(query_a)

    query_b =
      from(
        o in Defs_option,
        where: o.definition_id == ^id and ilike(o.selection_text, ^"#{selected}%"),
        # fragment("(?) @@ plainto_tsquery(?)", o.selection_text,   ^selected),
        select: o.selection_definition,
        order_by: [asc: o.selection_text]
      )

    _res = Cardiofields.Repo.all(query_b)
  end

  #################################

  #####################
  def search_test(query, search_term) do
    from(u in query,
      where: fragment("(to_tsvector('english', ?)
        || to_tsvector(coalesce('english', ?)))
        @@ plainto_tsquery('english', ?)", u.coding_instructions, u.table_name, ^search_term),
      order_by:
        fragment(
          "ts_rank((to_tsvector('english', ?)
            || to_tsvector(coalesce('english', ?))),
            plainto_tsquery('english', ?)) DESC",
          u.coding_instructions,
          u.table_name,
          ^search_term
        )
    )
  end

  ########################################
  alias Cardiofields.Canons.Defs_sentence

  @doc """
  Returns the list of defs_sentences.

  ## Examples

      iex> list_defs_sentences()
      [%Defs_sentence{}, ...]

  """
  def list_defs_sentences(conn) do
    _defs_sentences =
      Cardiofields.Repo.all(Ecto.assoc(conn.assigns[:definition], :defs_sentences))
  end

  @doc """
  Gets a single defs_sentence.

  Raises `Ecto.NoResultsError` if the Defs sentence does not exist.

  ## Examples

      iex> get_defs_sentence!(123)
      %Defs_sentence{}

      iex> get_defs_sentence!(456)
      ** (Ecto.NoResultsError)

  """
  def get_defs_sentence!(id), do: Repo.get!(Defs_sentence, id)

  def get_sentence(definition_id, language) do
    query =
      from(
        d in Defs_sentence,
        where: d.definition_id == ^definition_id and d.language == ^language
      )

    _sentence = Cardiofields.Repo.one(query)
  end

  ##############################

  #################################
  @doc """
  Creates a defs_sentence.

  ## Examples

      iex> create_defs_sentence(%{field: value})
      {:ok, %Defs_sentence{}}

      iex> create_defs_sentence(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_defs_sentence(attrs \\ %{}) do
    %Defs_sentence{}
    |> Defs_sentence.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a defs_sentence.

  ## Examples

      iex> update_defs_sentence(defs_sentence, %{field: new_value})
      {:ok, %Defs_sentence{}}

      iex> update_defs_sentence(defs_sentence, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_defs_sentence(%Defs_sentence{} = defs_sentence, attrs) do
    defs_sentence
    |> Defs_sentence.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Defs_sentence.

  ## Examples

      iex> delete_defs_sentence(defs_sentence)
      {:ok, %Defs_sentence{}}

      iex> delete_defs_sentence(defs_sentence)
      {:error, %Ecto.Changeset{}}

  """
  def delete_defs_sentence(%Defs_sentence{} = defs_sentence) do
    Repo.delete(defs_sentence)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking defs_sentence changes.

  ## Examples

      iex> change_defs_sentence(defs_sentence)
      %Ecto.Changeset{source: %Defs_sentence{}}

  """
  def change_defs_sentence(%Defs_sentence{} = defs_sentence) do
    Defs_sentence.changeset(defs_sentence, %{})
  end

  alias Cardiofields.Canons.Defs_code

  @doc """
  Returns the list of defs_codes.

  ## Examples

      iex> list_defs_codes()
      [%Defs_code{}, ...]

  """
  def list_defs_codes(conn) do
    Cardiofields.Repo.all(Ecto.assoc(conn.assigns[:definition], :defs_codes))
  end

  @doc """
  Gets a single defs_code.

  Raises `Ecto.NoResultsError` if the Defs code does not exist.

  ## Examples

      iex> get_defs_code!(123)
      %Defs_code{}

      iex> get_defs_code!(456)
      ** (Ecto.NoResultsError)

  """
  def get_defs_code!(id), do: Repo.get!(Defs_code, id)

  @doc """
  Creates a defs_code.

  ## Examples

      iex> create_defs_code(%{field: value})
      {:ok, %Defs_code{}}

      iex> create_defs_code(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_defs_code(attrs \\ %{}) do
    %Defs_code{}
    |> Defs_code.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a defs_code.

  ## Examples

      iex> update_defs_code(defs_code, %{field: new_value})
      {:ok, %Defs_code{}}

      iex> update_defs_code(defs_code, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_defs_code(%Defs_code{} = defs_code, attrs) do
    defs_code
    |> Defs_code.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Defs_code.

  ## Examples

      iex> delete_defs_code(defs_code)
      {:ok, %Defs_code{}}

      iex> delete_defs_code(defs_code)
      {:error, %Ecto.Changeset{}}

  """
  def delete_defs_code(%Defs_code{} = defs_code) do
    Repo.delete(defs_code)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking defs_code changes.

  ## Examples

      iex> change_defs_code(defs_code)
      %Ecto.Changeset{source: %Defs_code{}}

  """
  def change_defs_code(%Defs_code{} = defs_code) do
    Defs_code.changeset(defs_code, %{})
  end

  alias Cardiofields.Canons.Defs_option

  @doc """
  Returns the list of defs_options.

  ## Examples

      iex> list_defs_options()
      [%Defs_option{}, ...]

  """
  def list_defs_options(conn) do
    
    Cardiofields.Repo.all(Ecto.assoc(conn.assigns[:definition], 
    :defs_options))
    |> Defs_option.order_by_code()
  
  
  end

  @doc """
  Gets a single defs_option.

  Raises `Ecto.NoResultsError` if the Defs option does not exist.

  ## Examples

      iex> get_defs_option!(123)
      %Defs_option{}

      iex> get_defs_option!(456)
      ** (Ecto.NoResultsError)

  """
  def get_defs_option!(id), do: Repo.get!(Defs_option, id)

  @doc """
  Creates a defs_option.

  ## Examples

      iex> create_defs_option(%{field: value})
      {:ok, %Defs_option{}}

      iex> create_defs_option(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_defs_option(attrs \\ %{}) do
    %Defs_option{}
    |> Defs_option.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a defs_option.

  ## Examples

      iex> update_defs_option(defs_option, %{field: new_value})
      {:ok, %Defs_option{}}

      iex> update_defs_option(defs_option, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_defs_option(%Defs_option{} = defs_option, attrs) do
    defs_option
    |> Defs_option.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Defs_option.

  ## Examples

      iex> delete_defs_option(defs_option)
      {:ok, %Defs_option{}}

      iex> delete_defs_option(defs_option)
      {:error, %Ecto.Changeset{}}

  """
  def delete_defs_option(%Defs_option{} = defs_option) do
    Repo.delete(defs_option)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking defs_option changes.

  ## Examples

      iex> change_defs_option(defs_option)
      %Ecto.Changeset{source: %Defs_option{}}

  """
  def change_defs_option(%Defs_option{} = defs_option) do
    Defs_option.changeset(defs_option, %{})
  end

  alias Cardiofields.Canons.Opts_code

  @doc """
  Returns the list of opts_codes.

  ## Examples

      iex> list_opts_codes()
      [%Opts_code{}, ...]

  """
  def list_opts_codes(conn) do
    Repo.all(Ecto.assoc(conn.assigns[:defs_option], :opts_codes))
  end

  @doc """
  Gets a single opts_code.

  Raises `Ecto.NoResultsError` if the Opts code does not exist.

  ## Examples

      iex> get_opts_code!(123)
      %Opts_code{}

      iex> get_opts_code!(456)
      ** (Ecto.NoResultsError)

  """
  def get_opts_code!(id), do: Repo.get!(Opts_code, id)

  @doc """
  Creates a opts_code.

  ## Examples

      iex> create_opts_code(%{field: value})
      {:ok, %Opts_code{}}

      iex> create_opts_code(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_opts_code(attrs \\ %{}) do
    %Opts_code{}
    |> Opts_code.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a opts_code.

  ## Examples

      iex> update_opts_code(opts_code, %{field: new_value})
      {:ok, %Opts_code{}}

      iex> update_opts_code(opts_code, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_opts_code(%Opts_code{} = opts_code, attrs) do
    opts_code
    |> Opts_code.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Opts_code.

  ## Examples

      iex> delete_opts_code(opts_code)
      {:ok, %Opts_code{}}

      iex> delete_opts_code(opts_code)
      {:error, %Ecto.Changeset{}}

  """
  def delete_opts_code(%Opts_code{} = opts_code) do
    Repo.delete(opts_code)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking opts_code changes.

  ## Examples

      iex> change_opts_code(opts_code)
      %Ecto.Changeset{source: %Opts_code{}}

  """
  def change_opts_code(%Opts_code{} = opts_code) do
    Opts_code.changeset(opts_code, %{})
  end

  ########
  def count_options(id) do
    Cardiofields.Repo.one(
      from(
        option in Defs_option,
        select: count(option.id),
        where: option.definition_id == ^id
      )
    )
  end

  #######################
  def count_definitions() do
    Cardiofields.Repo.one(
      from(
        definition in Definition,
        select: count(definition.id)
      )
    )
  end

  #######################
  def count_element_phrases(id) do
    Cardiofields.Repo.one(
      from(
        sentence in Defs_sentence,
        select: count(sentence.id),
        where: sentence.definition_id == ^id
      )
    )
  end

  #########################
  def count_option_codes(option_id) do
    Cardiofields.Repo.one(
      from(
        opts_code in Opts_code,
        select: count(opts_code.id),
        where: opts_code.defs_option_id == ^option_id
      )
    )
  end

  ###############
  def all_defs_options(definition_id) do
    from(
      dr in Defs_option,
      where: dr.definition_id == ^definition_id,
      order_by: dr.code
    )
  end

  def defs_codes(definition_id) do
    from(dr in Defs_code, where: dr.definition_id == ^definition_id)
  end
###############################
  def search_a_field_option_code(qcode) do
    
    query =from(
        d in Definition,
        right_join: p  in Defs_option,
        right_join:  c in  Opts_code,
        where:
          d.id == p.definition_id 
          and c.defs_option_id == p.id  
          and c.code == ^qcode 
          and  not is_nil(c.code),
          limit: 250
    )
  res = Cardiofields.Repo.all(query)
  #res_len = length(res)
  # not working

  #title = "<div class='title_form'> "
  #<> "<h5 class='title is-5 has-text-centered frame_2'>"
  #<> "Option Codes"
  #<> "<h5/>"
   #if res_len > 0 do
   # IO.puts("-------title--------------------------------")
   # require EEx
   # EEx.eval_string "Hi, <%= @title %>", assigns: [title: "<%=title%>"]
  #end
 query
    
  end
    ######################################
  ##############
  def count_codes(id) do
    Cardiofields.Repo.one(
      from(
        code in Defs_code,
        select: count(code.id),
        where: code.definition_id == ^id
      )
    )
  end

  ##################
  def count_opts_sentences(id) do
    Cardiofields.Repo.one(
      from(
        opts_sentence in Cardiofields.Canons.Opts_sentence,
        select: count(opts_sentence.id),
        where: opts_sentence.defs_option_id == ^id
      )
    )
  end

  #######################
  def count_opts_images(id) do
    Cardiofields.Repo.one(
      from(
        opts_image in Cardiofields.Canons.Opts_image,
        select: count(opts_image.id),
        where: opts_image.defs_option_id == ^id
      )
    )
  end

  #######################
  ##################
  def select_options(field) do
    # first find the id that correspond to the field
    query_a =
      from(
        d in Definition,
        where: d.name == ^field,
        select: d.id
      )

    ids = Cardiofields.Repo.all(query_a)
    
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

        options = Cardiofields.Repo.all(query_b)
        # ok this one is to know the user encoding of selection
        # as is going to be saved in the database
        # race selected  Asian (15) is saved as 15

        _final_options =
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
        _final_options = ["There are more then one Field with the same name. Please Correct"]

      total_ids == nil ->
        _final_options = ["Definition Options - Are Nil"]

      true ->
        _final_options = ["Definition Options - Selections Not Found"]
    end

    ####################
  end

  #####################
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

    _res = Cardiofields.Repo.all(query)
  end

  #####################
  ##############################
  def convert_true_false(option) do
    case option do
      true -> "Yes"
      false -> "No"
      _ -> ""
    end
  end

  ##############

  ###########

  def convert_select_key(options, option) when is_binary(option) do
    Enum.map(options, fn {key, value} ->
      if value == option do
        key
      else
        ""
      end
    end)
  end

  ## get_select_key
  ###############
  def convert_select_key(options, option) when is_nil(option) do
    ""
  end

  ## get_select_key
  ###############

  ###############
  def convert_select_key(options, option) when is_list(option) do
    Enum.map(option, fn opt ->
      Enum.map(options, fn {key, value} ->
        if value == opt do
          "<li class='list-group-item'>" <> key <> " " <> "</li>"
          # "<li class='list-group-item'>" <> key <> " " <> "</li>"
        else
          ""
        end

        ## if
      end)

      ## select_options
    end)

    ## option
  end

  #####################
  def search_a_note(qname) do
    query =
      from(
        d in Definition,
        where: d.name == ^qname,
        select: d.notes,
        limit: 250,
        order_by: [asc: d.name, asc: d.table_name]
      )

    _res = Cardiofields.Repo.all(query)
  end

  #############
  def get_option_text(name, code) when not is_nil(code) do
    _query =
      from(
        d in Defs_option,
        where: d.name == ^name and d.code == ^"code",
        select: d.selection_text
      )
      |> Cardiofields.Repo.one()

    # a_result = Cardiofields.Repo.one(query)
    # IO.puts("jgour_get_option_text")
    # IO.inspect(a_result)

    # if a_result ==  is_nil(a_result) do

    # a_result = convert_true_false(a_result)

    # else a_result

    # end
  end

  def get_option_text(_name, code) when is_nil(code) do
    ""
  end

  ###########################
  alias Cardiofields.Canons.Defs_table

  @doc """
  Returns the list of defs_tables.

  ## Examples

      iex> list_defs_tables()
      [%Defs_table{}, ...]

  """
  def list_defs_tables do
    Repo.all(Defs_table)
  end

  @doc """
  Gets a single defs_table.

  Raises `Ecto.NoResultsError` if the Defs table does not exist.

  ## Examples

      iex> get_defs_table!(123)
      %Defs_table{}

      iex> get_defs_table!(456)
      ** (Ecto.NoResultsError)

  """
  def get_defs_table!(id), do: Repo.get!(Defs_table, id)

  @doc """
  Creates a defs_table.

  ## Examples

      iex> create_defs_table(%{field: value})
      {:ok, %Defs_table{}}

      iex> create_defs_table(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_defs_table(attrs \\ %{}) do
    %Defs_table{}
    |> Defs_table.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a defs_table.

  ## Examples

      iex> update_defs_table(defs_table, %{field: new_value})
      {:ok, %Defs_table{}}

      iex> update_defs_table(defs_table, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_defs_table(%Defs_table{} = defs_table, attrs) do
    defs_table
    |> Defs_table.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Defs_table.

  ## Examples

      iex> delete_defs_table(defs_table)
      {:ok, %Defs_table{}}

      iex> delete_defs_table(defs_table)
      {:error, %Ecto.Changeset{}}

  """
  def delete_defs_table(%Defs_table{} = defs_table) do
    Repo.delete(defs_table)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking defs_table changes.

  ## Examples

      iex> change_defs_table(defs_table)
      %Ecto.Changeset{source: %Defs_table{}}

  """
  def change_defs_table(%Defs_table{} = defs_table) do
    Defs_table.changeset(defs_table, %{})
  end

  ##########
  ##########################
  def search_in_table(qname) do
    from(
      d in Defs_table,
      where: fragment("(?) @@ plainto_tsquery(?)", d.name, ^qname),
      order_by: [asc: d.name]
    )
  end

  #######################

  alias Cardiofields.Canons.Opts_sentence

  @doc """
  Returns the list of opts_sentences.

  ## Examples

      iex> list_opts_sentences()
      [%Opts_sentence{}, ...]

  """
  def list_opts_sentences(conn) do
    Repo.all(Ecto.assoc(conn.assigns[:defs_option], :opts_sentences))
  end

  @doc """
  Gets a single opts_sentence.

  Raises `Ecto.NoResultsError` if the Opts sentence does not exist.

  ## Examples

      iex> get_opts_sentence!(123)
      %Opts_sentence{}

      iex> get_opts_sentence!(456)
      ** (Ecto.NoResultsError)

  """
  def get_opts_sentence!(id), do: Repo.get!(Opts_sentence, id)

  @doc """
  Creates a opts_sentence.

  ## Examples

      iex> create_opts_sentence(%{field: value})
      {:ok, %Opts_sentence{}}

      iex> create_opts_sentence(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_opts_sentence(attrs \\ %{}) do
    %Opts_sentence{}
    |> Opts_sentence.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a opts_sentence.

  ## Examples

      iex> update_opts_sentence(opts_sentence, %{field: new_value})
      {:ok, %Opts_sentence{}}

      iex> update_opts_sentence(opts_sentence, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_opts_sentence(%Opts_sentence{} = opts_sentence, attrs) do
    opts_sentence
    |> Opts_sentence.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Opts_sentence.

  ## Examples

      iex> delete_opts_sentence(opts_sentence)
      {:ok, %Opts_sentence{}}

      iex> delete_opts_sentence(opts_sentence)
      {:error, %Ecto.Changeset{}}

  """
  def delete_opts_sentence(%Opts_sentence{} = opts_sentence) do
    Repo.delete(opts_sentence)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking opts_sentence changes.

  ## Examples

      iex> change_opts_sentence(opts_sentence)
      %Ecto.Changeset{source: %Opts_sentence{}}

  """
  def change_opts_sentence(%Opts_sentence{} = opts_sentence) do
    Opts_sentence.changeset(opts_sentence, %{})
  end

  def get_report_opts_sentence(defs_option_id, language) do
    query =
      from(
        d in Opts_sentence,
        where: d.defs_option_id == ^defs_option_id and d.language == ^language
      )

    Cardiofields.Repo.one(query)
  end

  alias Cardiofields.Canons.Opts_image

  @doc """
  Returns the list of opts_images.

  ## Examples

      iex> list_opts_images()
      [%Opts_image{}, ...]

  """
  def list_opts_images(conn) do
    # Repo.all(Opts_image)
    Repo.all(Ecto.assoc(conn.assigns[:defs_option], :opts_images))
  end

  @doc """
  Gets a single opts_image.

  Raises `Ecto.NoResultsError` if the Opts image does not exist.

  ## Examples

      iex> get_opts_image!(123)
      %Opts_image{}

      iex> get_opts_image!(456)
      ** (Ecto.NoResultsError)

  """
  def get_opts_image!(id), do: Repo.get!(Opts_image, id)

  @doc """
  Creates a opts_image.

  ## Examples

      iex> create_opts_image(%{field: value})
      {:ok, %Opts_image{}}

      iex> create_opts_image(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_opts_image(attrs \\ %{}) do
    %Opts_image{}
    |> Opts_image.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a opts_image.

  ## Examples

      iex> update_opts_image(opts_image, %{field: new_value})
      {:ok, %Opts_image{}}

      iex> update_opts_image(opts_image, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_opts_image(%Opts_image{} = opts_image, attrs) do
    opts_image
    |> Opts_image.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a opts_image.

  ## Examples

      iex> delete_opts_image(opts_image)
      {:ok, %Opts_image{}}

      iex> delete_opts_image(opts_image)
      {:error, %Ecto.Changeset{}}

  """
  def delete_opts_image(%Opts_image{} = opts_image) do
    Repo.delete(opts_image)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking opts_image changes.

  ## Examples

      iex> change_opts_image(opts_image)
      %Ecto.Changeset{data: %Opts_image{}}

  """
  def change_opts_image(%Opts_image{} = opts_image, attrs \\ %{}) do
    Opts_image.changeset(opts_image, attrs)
  end
end
