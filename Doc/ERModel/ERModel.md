![ER model](http://www.plantuml.com/plantuml/png/XP51ImCn48Nl-HKXHscWlOf8fNZpOb7lq_OLGjD9IMQBGVplxiO4rsNHFStiztZpU5adeIZTsIi55YTPFtT8uWAtVOjq2Ppmu0MHITmL3Js-IoJzeNJ_dP1lTPckv3lqy-VKaMAU_dh95rG3fZEgWzi7Vjq-rMs7OuZOH91WGzxlQ7-gY8w2E4i2lv5tXnwq_2MHQeUrMIvkZBNtPhLOcLzvHfg1tLbRj7D5ZEr6qkzY_hhLwYZ27xxydy_dK6lmONZ5Bm00)

[UML код](https://github.com/ip-85/System-Dynamics/blob/master/Doc/ERModel/src/ERModel.puml)

![ER model DDL](https://github.com/ip-85/System-Dynamics/blob/master/Doc/ERModel/src/System-Dynamics.png)

[DDL код](https://github.com/ip-85/System-Dynamics/blob/master/src/sql/DDL.sql)

# REM. Приклад 1: Соц. опитування киян

### 1. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Якщо говорити в цілому, то події в Україні розвиваються: (extra.value)

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

+ 1.1. У правильному напрямі (extra.value);
+ 1.2. У неправильному напрямі (extra.value);

### 2. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Як би Ви оцінили зміни, що відбулися у м. Києві за часи міського голови Віталія Кличка? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}(questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer)
} (questionType.onValidateClb)

#### Response alternative:

+ 2.1. Зміни відбулися на краще (extra.value)
+ 2.2. Нічого не змінилось, все залишилось так, як було раніше (extra.value)
+ 2.3. Зміни відбулися на гірше (extra.value)
+ 2.4. Важко відповісти (extra.value)

### 3. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Скажіть, будь ласка, чи отримуєте Ви субсидію? (extra.value)

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

+ 3.1. Так (extra.value)
+ 3.2. Ні (extra.value)

### 4. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Скажіть, будь ласка, чи отримуєте Ви пенсію? (extra.value)

+ iconURL: none (questionType.iconURL);

+ beforeCreateClb: {
    show (loading);
} (questionType.beforeCreateCallBack)

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
} (questionType.afterCreateCallBack)

+ onValidateClb: {
    check (answer);
    if (answer equals key)
    then show (value);
} (questionType.onValidateClb)


#### Response alternative:

+ 4.1. Так (extra.value)
+ 4.2. Ні (extra.value)

#### Exta:

+ key: "4.1" 
+ value: {
#### (Extra) Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Якщо Ви отримуєте пенсію, то вона порівняно з тією, що була? (extra.value)

+ iconURL: none (questionType.iconURL);

#### Response alternative:

+ 1. Зменшилася (extra.value)
+ 2. Залишилась на тому ж рівні (extra.value)
+ 3. Збільшилася (extra.value)
+ 4. Важко відповісти (extra.value)

}

### 5. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Коли, на Вашу думку, повинні відбутися вибори міського голови Києва? (extra.value)

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

+ 5.1. Якомога швидше (extra.value)
+ 5.2. Весною 2020 року (extra.value)
+ 5.3. У жовтні 2020 року відповідно до Конституції (extra.value)
+ 5.4. Важко відповісти (extra.value)

### 6. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Якби вибори міського голови м. Києва та депутатів міської ради відбувалися найближчої неділі, чи взяли б Ви участь y
голосуванні? (extra.value)

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

+ 6.1. Обов'язково піду голосувати (extra.value)
+ 6.2. Не визначився, але напевно піду (extra.value)
+ 6.3. Не визначився, але напевно не піду (extra.value)
+ 6.4. Не піду голосувати у жодному разі (extra.value)

### 7. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Чи підтримуєте Ви об'єднання м. Києва з містами та селищами-супутниками (Бровари, Бориспіль, Вишневе, Ірпінь тощо)? (extra.value)

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

+ 7.1. Повністю підтримую (extra.value)
+ 7.2. Скоріше підтримую (extra.value)
+ 7.3. Скоріше не підтримую (extra.value)
+ 7.4. Взагалі не підтримую (extra.value)
+ 7.5 Важко відповісти (extra.value)

### 8. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Мер м. Києва В. Кличко звернувся до Верховної ради України з питанням приєднання смт Коцюбинське до складу м. Києва. Як Ви ставитесь до цієї ініціативи? (extra.value)

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

+ 8.1. Підтримую приєднання до м. Києва (extra.value)
+ 8.2. Не підтримую, залишив би як є (extra.value)
+ 8.3. Важко відповісти (extra.value)

### 9. Question (question.id):

#### Questionary: Соц. опитування киян (questionType.name)

#### Question type:

+ name: Якби вибори до Верховної Ради України відбувалися найближчої неділі, чи взяли б Ви участь y голосуванні? (extra.value)

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

+ 9.1. Обов'язково піду голосувати (extra.value)
+ 9.2. Не визначився, але напевно піду (extra.value)
+ 9.3. Не визначився, але напевно не піду (extra.value)
+ 9.4. Не піду голосувати у жодному разі (extra.value)

### 10. Question (question.id):

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Якби вибори Президента України відбувалися найближчої неділі, чи взяли б Ви участь y голосуванні? (extra.value)

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

+ 10.1. Обов'язково піду голосувати (extra.value)
+ 10.2. Не визначився, але напевно піду (extra.value)
+ 10.3. Не визначився, але напевно не піду (extra.value)
+ 10.4. Не піду голосувати у жодному разі (extra.value)









