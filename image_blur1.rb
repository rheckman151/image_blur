class Image
    def initialize(rows)
      @rows = rows
    end
  
    def output_image
      @rows.each do |row|
        puts row.join('')
      end
    end

    def blur
      
    end
end
      image = Image.new([
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ])

#image.blur
image.output_image

[1,1]

[0,1]
[1,0]
[1,2]
[2,1]