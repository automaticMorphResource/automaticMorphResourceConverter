from collections import defaultdict, OrderedDict
from itertools import izip


def createParameters(soupXml):
    sdefs = soupXml.sdefs.find_all('sdef')  # sdefs: Symbol Definitions
    definitions = defaultdict(list)

    for sdef in sdefs:
        definitionType, definitionNotation = tuple(sdef['n'].split(':'))
        definitions[definitionType].append(definitionType+'_'+definitionNotation)
    return definitions


def getTypes(paradigm):
    stags = paradigm.find_all('s')
    types = list()
    for each_tag in stags:
        types.append(each_tag['n'].split(':')[0])
    types = list(set(types))
    del(types[types.index('cat')])
    return types


def createFunction(paradigm, types, index):
    elements = paradigm.find_all('e')
    title_types = [ i.title() for i in types ]

    case_variables = [ 'x'+str(i) for i in range(1,len(types)+1)]
    text = '\\\\' + ','.join(case_variables) + ' => ' + 'case ' + '<' + ','.join(case_variables) + '> of {\n'
    tmp_dic = OrderedDict()
    result = OrderedDict()
    count = 1
    for counter, each_element in enumerate(elements):
        stags = each_element.find_all('s')
        for i in types:
            tmp_dic[i] = '_'
        for each_tag in stags:
            key, value = each_tag['n'].split(':')
            if key != 'cat':
                tmp_dic[key] = key + '_' + value
        values = tmp_dic.values()
        if tuple(values) in result:
#            print values
            continue
        result[tuple(values)] = each_element.find('l').text
        text += '<' + ','.join(values) +'>' + ' => ' + 's'+ str(count) + ';\n'
        count += 1
    no_of_parameters = count - 1;
    text += '_ => "--"\n};\n'
#    print len(result)
    argumentsList = [ 'Str ->' for i in range(1, no_of_parameters+1) ]
    resultVariable = ' { s : ' + ' => '.join(title_types) + ' => Str } '
    funcDeclaration = 'mkFunc' + str(index+1) + ': ' + ' '.join(argumentsList) + resultVariable + ' = \n'
    funcBody = '\\' + ','.join(['s'+str(i) for i in range(1, no_of_parameters+1)]) + ' -> {\n'
    funcBody += 's = ' + text
    corefunc = funcDeclaration + funcBody + '};\n'

    if len(paradigm['n'].split('/')) == 2:
        replace = paradigm['n'].split('/')[1].split('_')[0]
        name = paradigm['n'].split('/')[0]
        name += replace + '_' + paradigm['n'].split("/")[1].split("_")[-1]
    elif len(paradigm['n'].split('/')) == 1:
        replace = paradigm['n'].split('/')[0].split('_')[0]
        name = replace + '_' + paradigm['n'].split("/")[0].split("_")[-1] 

    functionDeclaration = name + ': Str -> { s : ' + ' => '.join(title_types) + ' => Str } = \s -> case s of {\n'
    functionBody = 'var + "' + replace + '" => mkFunc' + str(index+1) + ' ' + ' '.join(['(var+"' + v + '")' for k,v in result.iteritems()]) + '\n};\n'
    basicfunc = functionDeclaration + functionBody   

    return corefunc + basicfunc