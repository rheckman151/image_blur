class Image

    def initialize(rows)
      @image = rows
    end
  
    def output_image
      @image.each do |row|
        puts row.join('')
      end
    end
  
    def blur (distance=1)
      distance.times do
        blur_ones!
      end
    end
  
    private
  
      def blur_ones!
        blur_ones = []
        @image.each_with_index do |row, i|
          row.each_with_index do |x, row_i|
            blur_ones << [i, row_i] if x == 1
          end
        end
  
        blur_ones.each do |one|
          @image[one[0]][one[1] + 1] = 1 if one[1] + 1 <= @image[one[0]].length - 1
          @image[one[0]][one[1] - 1] = 1 if one[1] - 1 >= 0
          @image[one[0] + 1][one[1]] = 1 if one[0] + 1 <= @image.length - 1
          @image[one[0] - 1][one[1]] = 1 if one[0] - 1 >= 0
        end
      end
  
  end
  
  image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0]
  ])
  image.blur(2)
  image.output_image