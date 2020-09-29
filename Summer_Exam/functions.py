# def what_am_I(just_text, my_type="all"):
    
#     d = {}
#     list_a = []
    
#     if my_type == "all":
#         list_a = ["int", "str", "float", "dict", "tuple", "list", "set", "bool"]
#     else:
#         list_a = [my_type]    
    
#     for value in just_text:
#         # print(value)
#         for my_type in list_a:
#             if type(value).__name__ == my_type:
#                 if my_type in d.keys():
#                     d[my_type] += [value]
#                 else:
#                     d[my_type] = [value]

#     return d


# def recursion(n):
#     if n<2:
#         return 1
#     else:
#         return n*recursion(n-1)


def swaps(a_list):
    type_list = [type(a_list[0]).__name__]
    index_list = []
    b_list = a_list
    print(b_list)
    i = 0
    for val in a_list:
        if type(val).__name__ not in type_list:
            index_list.append(i)
        i+=1
    j=0
    for index in index_list:
        if j<(len(index_list)-1):
            b_list[index-1], b_list[len(index_list)-1] = b_list[len(index_list)-1], b_list[index-1]
        print(b_list)
        j+=1
        
    return b_list