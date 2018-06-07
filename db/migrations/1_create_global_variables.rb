Sequel.migration do
  up do
    create_table :global_variables do
      String :hostname, null: :false
      String :variable_name, null: false
      String :value
    end
  end
  down do
    drop_table(:global_variables)
  end
end
