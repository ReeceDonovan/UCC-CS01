# def main(input_file):
#     fileIn = open(input_file, "r")
#     lines = fileIn.readlines()
#     fileIn.readlines()
#     dict = {}
#     for line in lines:
#         line = line.replace("(", "").replace(")","").replace("\n","").replace('"', "")
#         new_line = line.split(", ")
#         if new_line[0] not in dict.keys():
#             dict[new_line[0]] = new_line[1::]
#         elif new_line[0] in dict.keys():
#             temp = dict[new_line[0]]
#             temp.append(new_line[2])
#             dict[new_line[0]] = temp
#     print(dict)
#     d=dict
#     try:
#         output = ""
#         for val in d.keys():
#             items = d[val]
#             output += "id %s\t %s has an address of %s\n" %(val, items[0], items[1])
#             if len(items)>2:
#                 output += "id %s\t %s also has an address of %s\n" %(val, items[0], items[2])
#     except Exception as e:
#         output = "Oops, error..."
#         return output
    
#     output_file = open("output.txt","a")
#     output_file.write(output)
#     output_file.close()
    
#     return output
            
            
            
def main(a1,a2):          

    # length = []
    # output = []
    # for item in d.keys():
    #     if len(d[item]) > len(length):
    #         length=d[item]
    #         output=[item]
    #     elif len(d[item]) == length:
    #         output.append(item)
    # return output
    
    # output = list(set(d[rc1]).intersection(d[rc2]))
    # # output = d[rc2]
    # return output

    # output=""
    # try:
    #     key_list = list(d.keys())
    #     key_list.sort()
    #     print(key_list)
    #     for k in key_list:
    #         item_list = d[k]
    #         item_list.sort()
    #         output += (k.capitalize())
    #         for i in item_list:
    #             output += "\t%s" % (i.capitalize())
    #         output +="\n"
    #     return output
    # except Exception as e:
    #     return "Oops, error..."
    
    # output = list(map(lambda e1, e2: e1+e2, [x + y for x in a1 for y in a2 * [x]]))
    # new_loop = [e1 + e2 for e1 in a1 for e2 in a2]
    # output = [x + y for x in a1 for y in a2]
    return list(map(lambda x : x[0] + x[1], zip(a1, a2)))
    # new_loop = map
    
    

if __name__ == "__main__":
    # d={'tesco':["cork", "dublin"], 'dunnes':["kerry", "cobh", "dublin", "wilton"]}
    print(main([1,2,3,4,5],[1,2,3,4,5]))
    