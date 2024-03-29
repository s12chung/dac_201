class Page < ActiveRecord::Base
  named_scope :all_by_number, :conditions => "number IS NOT NULL", :order => "number ASC"
  named_scope :about, :conditions => {:number => nil}

  def self.create_with_title(title, filename=title.downcase)
    page = find :first, :order => "number DESC"
    new_number = page.nil? ? 0 : page.number + 1
    Page.create :title => title, :filename => filename, :number => new_number
  end

  def prev
    if number: Page.find :first, :conditions => {:number => number - 1} end
  end

  def next
    if number: Page.find :first, :conditions => {:number => number + 1} end
  end

  def contents
    file = File.new "public/pages/#{filename}.htm", "r"

    s = ""
    while line = file.gets
      s += line
    end
    file.close

    return s
  end
end