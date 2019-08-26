class Image

  def initialize(rows)
    @image = rows
  end

  def output_image
    @image.each do |row|
      puts row.join('')
    end
  end

  def blur(distance=1)
    distance.times do
      blur_ones!
    end
  end

    def blur_ones!
      ones = []
      @image.each_with_index do |row, i|
        row.each_with_index do |x, row_i|
          ones << [i, row_i] if x == 1
        end
    end
    puts "ONES ARRAY---->#{ones.inspect}"

      ones.each do |coords|
        @image[coords[0]][coords[1] + 1] = 1 if coords[1] + 1 <= @image[coords[0]].length - 1
        @image[coords[0]][coords[1] - 1] = 1 if coords[1] - 1 >= 0
        @image[coords[0] + 1][coords[1]] = 1 if coords[0] + 1 <= @image.length - 1
        @image[coords[0] - 1][coords[1]] = 1 if coords[0] - 1 >= 0
      end
    end

end

image = Image.new([
  [0, 0, 0, 1], #0
  [0, 1, 0, 0], #1
  [0, 0, 0, 0], #2
  [0, 0, 0, 0],
  [0, 0, 1, 0],
  [0, 0, 0, 0]
])
image.blur
image.output_image