class Container < ApplicationRecord

  belongs_to :user
  belongs_to :parent, class_name: 'Container', optional: true

  has_many :container_items

  def parents
    []
  end

  def children
    []
  end

end
