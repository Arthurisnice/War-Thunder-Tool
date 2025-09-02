image_file="base_image_example.png"
img_file=""
my_cool_image=sprite_add(image_file, 0, false, false, 415, 95)

word_array = ["en","es","pt"]

image_speed=0

amount=0

leng_num=0

text_txt=""

searching=false

json_list = import_json("json_ranges#search.txt")


list = json_list[0].maps;

qtt=0

string_val=0

end_result=array_create(6)

last_txt=text_txt