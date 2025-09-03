global.font_uk = font_add(working_directory + "font_for_ukraine.ttf", 16, true, false, 32, 127);
global.font_ch = font_add(working_directory + "font_for_chinese.ttf", 16, true, false, 32, 127);
global.font_jp = font_add(working_directory + "font_for_japan.ttf", 16, true, false, 32, 127);

image_file="base_image_example.png"
img_file=""
my_cool_image=sprite_add(image_file, 0, false, false, 415, 95)

word_array = ["en","es","pt","uk","jp","ch"]

image_speed=0

amount=0

leng_num=0

text_txt=""

searching=false

json_list = import_json("json_ranges#search.txt")


list = json_list[0].maps;

qtt=0

string_val=0

font_to=Font_11

end_result=array_create(6)

found_words=array_create(0)

spin=0

extra=30