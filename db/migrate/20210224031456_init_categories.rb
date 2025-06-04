class InitCategories < ActiveRecord::Migration[6.1]
  def up
    d = Domain.find_or_create_by(name: 'Example-Domain')
    Category.create(domain: d, name: 'Example-Category')
    Category.create(domain: d, name: 'Example-Category2')
  end

  def down
    Category.destroy_all
  end
end
