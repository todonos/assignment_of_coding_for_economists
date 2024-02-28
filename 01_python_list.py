# Working with List

str_1 = "Life"
str_list1 = ["is", "but"]
str_list2 = ["wonderful", "short"]
punc_list = [",", ".", "?"]
space = " "

sentence = str_1 + space + str_list1[0] + " " + str_list2[0] + punc_list[0] + space + str_list1[1] + " " + str_list2[1] + punc_list[1]

print(sentence)
print(type(sentence))
print(len(sentence))

print(sentence.lower())
print(sentence.upper())

sentence_elements = sentence.lower().split()
print(sentence_elements)
print(type(sentence_elements))

number_of_words = len(sentence_elements)
print(f'This sentence has {number_of_words} words.')

sentence_sep = sentence.lower().split(",")
print(sentence_sep)

sentence_join = ",".join(sentence_sep)
print(sentence_join)

mixed_list = sentence_elements
str_list3 = ["love", "enjoy", "play"]
mixed_list.append(5)
print(mixed_list)
mixed_list.append(str_list3)
print(mixed_list)

mixed_list.reverse()
print(mixed_list)

mixed_list.remove(5)
print(mixed_list)

mixed_list.pop()
print(mixed_list)

word_enjoy = mixed_list[0][1]
print(word_enjoy)