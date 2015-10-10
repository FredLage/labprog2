module ProductsHelper
  def raw_materials_names(raw_materials)
    names = ""
    raw_materials.each_with_index do |r, i|
      names += r.name
      if i != raw_materials.size - 1
        names += ", "
      end
    end
    names
  end
end
