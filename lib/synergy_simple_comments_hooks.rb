class SynergySimpleCommentsHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :admin_tabs do
      %(<%= tab(:simple_comments) %>)
  end
end
