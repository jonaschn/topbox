from stmt import STMT

stmt = STMT('bit_of_testing', epochs=10, mem=15000)


space = ['text text more text', 'things to do with text']
labels = ['label1 label2', 'label1 label3']

stmt.train(space, labels)


infer = ['this is a text', 'things with more text']
gs = ['label1 label2', 'label1 label3']

stmt.test(infer, gs)

from sklearn.metrics import average_precision_score

y_true, y_score = stmt.results(gs, array=True)

print(average_precision_score(y_true, y_score))
