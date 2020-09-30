# ENTER YOUR NAME AND STUDENT NUMBER HERE:
# <Reece Donovan> <119310841>
# CS1117 - BSc/DSA 2019/20
# Tuesday 28th April (Irish Summer Time)
#
# State here is you are registered with DSS: NO
#
# State here if availing of a spelling and grammar waiver: NO
#
# Place your work for each question/part in the appropriate section below.
#
# By submitting this exam, you declare
#    (1) that all of the  work is your own;
#    (2) that you did not seek whole or partial solutions for any part of
#        your submission from others; and
#    (3) that you did not and will not discuss, exchange, share, or
#        publish complete or partial solutions for this exam or any
#        part of it.
#
# This is to certify that the work I am submitting is my own and has been done by me solely and not in consultation with anyone else. Neither I nor anyone else have submitted this work for assessment, either at University College Cork or elsewhere. I have read and understood the regulations of University College Cork concerning plagiarism.  Where breaches of the declaration are detected, these will be reviewed under UCC student conduct and plagiarism policies. Any breach of the examination rules is a serious issue and can incur penalties.

# By proceeding you signify your agreement to ALL the above rules and declaration.

# QUESTION ONE
# ==========================================================================
def question_one():

    # the answer for each MCQ question will be added to this list
    question_one_answer = []

    # place your choice of A, B, C or D between the quotes for each question
    # of this MCQ, e.g., if you think D is the correct answer for part (i),
    # the code snippet will be:
    # part_i = "D"

    # Part (i)
    # --------------------------------------------------------
    part_i = "B"
    question_one_answer.append(part_i)

    # Part (ii)
    # --------------------------------------------------------
    part_ii = "C" 
    question_one_answer.append(part_ii)

    # Part (iii)
    # --------------------------------------------------------
    part_iii = "D"
    question_one_answer.append(part_iii)

    # Part (iv)
    # --------------------------------------------------------
    part_iv = "B"
    question_one_answer.append(part_iv)

    # Part (v)
    # --------------------------------------------------------
    part_v = "B"
    question_one_answer.append(part_v)

    # Part (vi)
    # --------------------------------------------------------
    part_vi = "A"
    question_one_answer.append(part_vi)

    # Part (vii)
    # --------------------------------------------------------
    part_vii = "D"
    question_one_answer.append(part_vii)

    # Part (viii)
    # --------------------------------------------------------
    part_viii = "B"
    question_one_answer.append(part_viii)

    # Part (ix)
    # --------------------------------------------------------
    part_ix = "A"
    question_one_answer.append(part_ix)

    # Part (x)
    # --------------------------------------------------------
    part_x = "D"
    question_one_answer.append(part_x)

    return question_one_answer

# QUESTION TWO
# ===========================================================================

def loop_the_loop(a1, a2):
    new_loop = []
    for e1 in a1:
        for e2 in a2:
            new_loop.append(e1+e2)
    return new_loop

# Part (a)
# --------------------------------------------------------
def loop_the_loop_while(a1, a2):
    # Place your work for Q2, Part (a) here.
    new_loop = []
    i=0
    while i in range(len(a1)):
        j=0
        while j in range(len(a2)):
            new_loop.append(a1[i] + a2[j])
            j+=1
        i+=1     
    return new_loop

# Part (b)
# --------------------------------------------------------
def loop_the_loop_comp(a1, a2):
    # Place your work for Q2, Part (b) here.
    new_loop = [e1 + e2 for e1 in a1 for e2 in a2]
    return new_loop

# Part (c)
# --------------------------------------------------------
def loop_the_loop_zip(a1, a2):
    # Place your work for Q2, Part (c) here.

    return

# Part (d)
# --------------------------------------------------------
def loop_the_loop_error(a1, a2):
    # Place your work for Q2, Part (d) here.
    new_loop = []
    try:
        for e1 in a1:
            for e2 in a2:
                new_loop.append(e1+e2)
    except Exception as e:
        return "please use valid lists"
    return new_loop

# QUESTION THREE
# ==========================================================================
def add_to_list(element, alist, index):
    # Place your work for Q3 here.
    blist=[]
    try:
        if index-1>len(alist):
            alist.append(element)
            return alist
        else:
            if index<0:
                blist.append(element)    
            for item in alist:
                blist.append(item)
                if (len(blist) == index):
                    blist.append(element)
            return blist
    except Exception as e:
        return "Oops, error..."
    

# QUESTION FOUR
# ==========================================================================
# Part (a)
# --------------------------------------------------------
def read_file(input_file):
    # Place your work for Q4, Part (a) here.
    fileIn = open(input_file, "r")
    lines = fileIn.readlines()
    fileIn.readlines()
    d = {}
    for line in lines:
        line = line.replace("(", "").replace(")","").replace("\n","").replace('"', "")
        new_line = line.split(", ")
        if new_line[0] not in d.keys():
            d[new_line[0]] = new_line[1::]
        elif new_line[0] in d.keys():
            temp = d[new_line[0]]
            temp.append(new_line[2])
            d[new_line[0]] = temp
    return d

# Part (b)
# --------------------------------------------------------
def write_dict(d):
    # Place your work for Q4, Part (b) here.
    try:
        output = ""
        for val in d.keys():
            items = d[val]
            output += "id %s\t %s has an address of %s\n" %(val, items[0], items[1])
            if len(items)>2:
                output += "id %s\t %s also has an address of %s\n" %(val, items[0], items[2])
    except Exception as e:
        output = "Oops, error..."
        return output
    
    output_file = open("output.txt","a")
    output_file.write(output)
    output_file.close()
    
    return output


# QUESTION FIVE
# ==========================================================================
# Part (a)
# --------------------------------------------------------
def biggest_retail_chain(d):
    # Place your work for Q5, Part (a) here.
    length = []
    output = []
    for item in d.keys():
        if len(d[item]) > len(length):
            length=d[item]
            output=[item]
        elif len(d[item]) == length:
            output.append(item)
    return output

# Part (b)
# --------------------------------------------------------
def common_towns(d, rc1, rc2):
    # Place your work for Q5, Part (b) here.
    output = list(set(d[rc1]).intersection(d[rc2]))
    return output

# Part (c)
# --------------------------------------------------------
def sorted_print(d):
    # Place your work for Q5, Part (c) here.
    output=""
    try:
        key_list = list(d.keys())
        key_list.sort()
        print(key_list)
        for k in key_list:
            item_list = d[k]
            item_list.sort()
            output += (k.capitalize())
            for i in item_list:
                output += "\t%s" % (i.capitalize())
            output +="\n"
        return output
    except Exception as e:
        return "Oops, error..."
    
