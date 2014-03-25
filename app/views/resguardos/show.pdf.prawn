pdf.text "Developed by David Jarillo"

pdf.move_down 70

# Add the font style and size
pdf.font "Helvetica"
pdf.font_size 18
pdf.text_box "Numero de Articulo  #{@resguardo.no_resguardo}", :align => :right

pdf.font_size 12
pdf.text "Invenario Electronico - Tijuana Propone 
Presamo de Equipo", :align => :center
pdf.move_down 20

pdf.font_size 22
pdf.text " #{@resguardo.concepto}." 
pdf.text " #{@resguardo.descripcion}."
pdf.text " #{@resguardo.marca}."
pdf.text " #{@resguardo.modelo}."
pdf.text " #{@resguardo.estado}."
pdf.text " #{@resguardo.notas}."
pdf.text " #{@f_compra}."
pdf.move_down 90


pdf.font_size 15
pdf.table([ ["Firma de Autorizacion de Prestamo
	Victor David Jarillo", " ", "Firma del Solicitante
	#{@resguardo.proveedor}"],])

pdf.move_down 60
pdf.text "Estoy de acuerdo en cuidar dicho equipo, estoy conciente que algun daño o mal uso de este, sera mi responsabilidad y remboolsere monetariamente en dado que pase algun percance"
pdf.move_down 30
pdf.text " Fecha de Expedicion: #{Time.now}"
