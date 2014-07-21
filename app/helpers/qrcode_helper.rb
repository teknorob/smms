module QrcodeHelper
  require 'chunky_png'
  require 'rqrcode'
  require 'rqrcode_png'

  def render_qr_code text, size = 3
    return if text.to_s.empty?
    qr = RQRCode::QRCode.new(text)
    sizeStyle = "width: #{size}px; height: #{size}px;"

    content_tag :table, class: "qrcode" do
      qr.modules.each_index do |x|
        concat(content_tag(:tr) do
          qr.modules.each_index do |y|
            color = qr.dark?(x, y) ? 'black' : 'white'
            concat content_tag(:td, nil, class: color, style: sizeStyle)
          end
        end)
      end
    end
  end

  def render_qr_code_png text, size = 200
    return if text.to_s.empty?
    qr = RQRCode::QRCode.new(text, :size => 4, :level => :h )
    png = qr.to_img.resize(size,size)
    image_tag( png.to_data_url )
  end
end