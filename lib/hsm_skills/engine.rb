module HsmSkills
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
    initializer 'hsmskills.register_plugin', :after=>"HsmPlugins" do |app|
       Hsm::Application::Plugins.add "skills"
    end
  end
end
