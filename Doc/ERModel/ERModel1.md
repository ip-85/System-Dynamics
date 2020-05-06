![ER model](http://www.plantuml.com/plantuml/png/XP51ImCn48Nl-HKXHscWlOf8fNZpOb7lq_OLGjD9IMQBGVplxiO4rsNHFStiztZpU5adeIZTsIi55YTPFtT8uWAtVOjq2Ppmu0MHITmL3Js-IoJzeNJ_dP1lTPckv3lqy-VKaMAU_dh95rG3fZEgWzi7Vjq-rMs7OuZOH91WGzxlQ7-gY8w2E4i2lv5tXnwq_2MHQeUrMIvkZBNtPhLOcLzvHfg1tLbRj7D5ZEr6qkzY_hhLwYZ27xxydy_dK6lmONZ5Bm00)

[UML код](https://github.com/ip-85/System-Dynamics/blob/master/Doc/ERModel/src/ERModel.puml)

![ER model DDL](https://github.com/ip-85/System-Dynamics/blob/master/Doc/ERModel/src/System-Dynamics.png)

[DDL код](https://github.com/ip-85/System-Dynamics/blob/master/src/sql/DDL.sql)



# REM. Приклад 1: Соц. опитування !!!мешканців!!! гуртожитку

### 1. Question (question.id):

#### Questionary: Соц. опитування мешканців гуртожитку (questionType.name)

#### Question type:

+ name: Чи задоволені ви життям у гуртожитку? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Так (extra.value)
+ 1.2. Ні (extra.value)
+ 1.3. Важко відповісти (extra.value)


### 2. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Якщо наступного місяця ціна на прожиток у гуртожитку збільшиться... (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Я пійду до завідуючої і запитаю субсідії (extra.value)
+ 1.2. Я сплачу !!!! (extra.value)
+ 1.3. Покину гуртожиток (extra.value)


### 3. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Ваш стілець був сломаний,що ви будете робити? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Придбаю новий за свої кошти (extra.value)
+ 1.2. Звернуся до каштеляну і попрошу новий стілець (extra.value)
+ 1.3. Забронюю візит мастера,щоб він полагодив стілець (extra.value)

### 4. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Чи задоволені ви чистотою у гуртожитку? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Так (extra.value)
+ 1.2. Ні (extra.value)

### 5. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Послугами якого провайдера ви користуєтеся? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. КПІ-Телеком (extra.value)
+ 1.2. іншим (extra.value)
 
### 6. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Скільки раз на тиждень ви бачите студентів,що палять цигарки всередині гуртожитку? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Кожного дня (extra.value)
+ 1.2. Декілька разів на тиждень (extra.value)
+ 1.3. Ніколи (extra.value)

### 7. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Якщо ваші друзі запитають вашу думку про гуртожиток,ви... (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Пораджу гуртожиток (extra.value)
+ 1.2. Пораджу утриматися від проживання (extra.value)
+ 1.3. Важо відповісти (extra.value)

### 8. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Якщо каштелян попросить вас пофарбувати парка/прибрати на поверсі ви... (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Відмовтеся від роботи,тому що вони не мають на це законного право (extra.value)
+ 1.2. Виконаєте прохання (extra.value)


### 9. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Якщо студенська рада гуртожитку попросять невелику(до 100 грн) плату,для покращення гуртожитку(наприклад диван у коридорі)ви...  (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Погодитесь (extra.value)
+ 1.2. Відмовитесь від пропозиції (extra.value)


### 10. Question (question.id):

#### Questionary: Соц. опитування жителей гуртожитку (questionType.name)

#### Question type:

+ name: Якщо б у вас з'явилося бажання зробити ремонт у своїй кімнаті,співпрацювали б ви з каштеляном і завідуючою гуртожитку? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 1.1. Так,залюбки (extra.value)
+ 1.2. Ні,я їм не довіряю (extra.value)