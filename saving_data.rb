# Safer downloading of pics
  # if Dir.pwd != Dir.home
  #   Dir.chdir
  # end

  # Dir.chdir "Desktop"

  # dir_name = false
  # while !dir_name
  #   puts "What do you want to call this folder?"
  #   potential_dir = gets.chomp
  #   conflict_dir = Dir["#{potential_dir}"]
  #   if potential_dir == conflict_dir
  #     puts "Sorry, that folder already exists, please choose another"
  #     dir_name = false
  #   else
  #     dir_name = potential_dir
  #     break
  #   end
  # end
  # Dir.mkdir "#{dir_name}"
  # Dir.chdir "#{dir_name}"

  # pic_names  = Dir["/Volumes/KINGSTON/**/*.jpg"]

  # batch_name = false

  # while !batch_name
  #   puts 'What would you like to call this batch?'
  #   potential_name = gets.chomp
  #   conflict_name = Dir["/Volumes/KINGSTON/**/#{potential_name}"]
  #   if conflict_name == potential_name
  #     puts "Sorry, that batchname has been used, please choose another"
  #     batch_name = false
  #   else
  #     batch_name = potential_name
  #     break
  #   end
  # end

  # puts
  # print "Downloading #{pic_names.length} files:"

  # pic_number = 1

  # pic_names.each do |name|
  #   print '.'

  #   if pic_number < 10
  #      new_name =  "#{batch_name}0#{pic_number}.jpg"
  #   else
  #       new_name = "#{batch_name}#{pic_number}.jpg"
  #   end

  #   if File.exist? "#{new_name}"
  #     puts "File name conflict\, exiting"
  #     exit
  #   end

  #   File.rename("#{name}", "#{new_name}")
  #   pic_number = pic_number + 1
  # end

  # puts
  # puts 'Downloading is Done'




















