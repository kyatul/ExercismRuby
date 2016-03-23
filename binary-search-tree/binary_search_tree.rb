# Exercism Ruby - Binary Search Tree
class Bst
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
    @all_data = []
  end

  def insert(data)
    parent = get_parent_for(data)

    # adding the new child element
    if data <= parent.data
      parent.left = Bst.new(data)
    else
      parent.right = Bst.new(data)
    end
  end

  def each
    inorder_traverse(self)
    @all_data.each { |data| yield data }
  end

  private

  def get_parent_for(data)
    iterator = self
    temp_iterator = nil

    # finding the parent node on which new child element is to be added
    until iterator.nil?
      if data <= iterator.data
        temp_iterator = iterator
        iterator = iterator.left
      else
        temp_iterator = iterator
        iterator = iterator.right
      end
    end

    temp_iterator
  end

  def inorder_traverse(bst)
    inorder_traverse(bst.left) unless bst.left.nil?
    @all_data << bst.data
    inorder_traverse(bst.right) unless bst.right.nil?
  end
end
