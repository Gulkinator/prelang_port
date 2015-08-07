json.array!(@stack_components) do |stack_component|
  json.extract! stack_component, :id, :name, :portfolio_item_id
  json.url stack_component_url(stack_component, format: :json)
end
