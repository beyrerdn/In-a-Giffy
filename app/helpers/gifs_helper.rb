module GifsHelper

  def tag_links(tags)
    tags.split(",").map{|tag| link_to tag.strip, tag_path(tag.strip), :remote => true, :class => "btn btn-default glyphicon glyphicon-tags", :method => :get}.join(" ")
  end

end
