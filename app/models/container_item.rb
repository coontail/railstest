class ContainerItem < ApplicationRecord

  belongs_to :container

  def move_to(other_container)
    # TODO
  end

  def copy_to(other_container)
    # TODO
  end

end
