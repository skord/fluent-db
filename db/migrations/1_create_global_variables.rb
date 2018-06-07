Sequel.migration do
  up do
    create_table :global_variables do
      String :hostname, null: :false
      String :variable_name, null: false
      String :value
      DateTime :created_at
      DateTime :updated_at
      primary_key [:hostname, :variable_name]
    end
  end
  down do
    drop_table(:global_variables)
  end
end
