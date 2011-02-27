class PlanDrawer
require 'pdf/simpletable'

  def self.draw(plan)
    pdf = PDF::Writer.new
    pdf.select_font("Helvetica")
   # pdf.image "public/images/rails.png", :justification => :right, :resize => 0.75
       
    table = PDF::SimpleTable.new
    table.title = "Sample Tables"
    table.column_order.push(*%w(first second third fourth))
    table.columns["first"] = PDF::SimpleTable::Column.new("first")
    table.columns["first"].heading = "Datum      "
    table.columns["second"] = PDF::SimpleTable::Column.new("second")
    table.columns["second"].heading = "Uhrzeit      "
    table.columns["third"] = PDF::SimpleTable::Column.new("third")
    table.columns["third"].heading = "Aufgabe                                                             "
    table.columns["fourth"] = PDF::SimpleTable::Column.new("fourth")
    table.columns["fourth"].heading = "Verantw."
    
    table.show_lines    = :all
    table.show_headings = true
    table.orientation   = :center
    table.position      = :center
    
    data = []
    
    periodeIds = plan.periode_names
    periodeIds.each do |pId|
      p = Periode.find(pId)
      tasks = p.periode_tasks_names
      tasks = tasks.map { |task| task+"\n"}
      dataEntry = { "first"=> p.name, 
                    "second"=> "12:00 ", 
                    "third"=> tasks, 
                    "fourth"=> 'MEh'}
      data << dataEntry
    end
   

    table.data.replace data
    table.render_on(pdf)

    pdf.render 
  end
  
  
  
  
end