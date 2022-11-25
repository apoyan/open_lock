# open_lock

Кодовый замок(велосипедный или как на чемодане) содержит N независимо вращающихся(в обе стороны) дисков с цифрами 0-9. Для упрощения положим 1 <= N <= 6 .
Необходимо открыть замок - найти последовательность комбинаций при вращении дисков, позволяющей из заданной начальной комбинации попасть в заданную конечную, исключая попадание в одну из заданных запрещённых комбинаций.

Необходмо разработать код на Ruby, получающий на вход количество дисков, исходную, целевую и список запрещенных комбинаций и выводящую последовательность комбинаций от начальной до конечной, минуя запрещенные, или выводящий сообщение, что решения нет. Если возможных последовательностей несколько - необходимо вывести любую из них(не обязательно наикратчайшую).

Например, при входных данных:
DISC_COUNT = 3
from = [0, 0, 0]
to = [1, 1, 1]
exclude = [[0, 0, 1], [1, 0, 0]]
пример решения:
[0, 0, 0]
[0, 1, 0]
[1, 1, 0]
[1, 1, 1]
