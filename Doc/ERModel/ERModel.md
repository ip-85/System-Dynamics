![ER model](http://www.plantuml.com/plantuml/png/XP51ImCn48Nl-HKXHscWlOf8fNZpOb7lq_OLGjD9IMQBGVplxiO4rsNHFStiztZpU5adeIZTsIi55YTPFtT8uWAtVOjq2Ppmu0MHITmL3Js-IoJzeNJ_dP1lTPckv3lqy-VKaMAU_dh95rG3fZEgWzi7Vjq-rMs7OuZOH91WGzxlQ7-gY8w2E4i2lv5tXnwq_2MHQeUrMIvkZBNtPhLOcLzvHfg1tLbRj7D5ZEr6qkzY_hhLwYZ27xxydy_dK6lmONZ5Bm00)

[UML код](https://github.com/ip-85/System-Dynamics/blob/master/Doc/ERModel/src/ERModel.puml)

![ER model DDL](https://github.com/ip-85/System-Dynamics/blob/master/Doc/ERModel/src/System-Dynamics.png)

[DDL код](https://github.com/ip-85/System-Dynamics/blob/master/src/sql/DDL.sql)

# REM. Приклад 1: Соц. опитування киян

### 1. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Якщо говорити в цілому, то події в Україні розвиваються:

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 1.1. У правильному напрямі;
+ 1.2. У неправильному напрямі;
+ 1.3. Важко відповісти;

### 2. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Як би Ви оцінили зміни, що відбулися у м. Києві за часи міського голови Віталія Кличка?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 2.1. Зміни відбулися на краще
+ 2.2. Нічого не змінилось, все залишилось так, як було раніше
+ 2.3. Зміни відбулися на гірше
+ 2.4. Важко відповісти

### 3. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Скажіть, будь ласка, чи отримуєте Ви субсидію?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 3.1. Так
+ 3.2. Ні

### 4. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Скажіть, будь ласка, чи отримуєте Ви пенсію?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer);
    if (answer equals key)
    then show (value);
}


#### Response alternative:

+ 4.1. Так
+ 4.2. Ні

#### Exta:

+ key: "4.1"
+ value: {
#### (Extra) Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Якщо Ви отримуєте пенсію, то вона порівняно з тією, що була?

+ iconURL: none;

#### Response alternative:

+ 1. Зменшилася
+ 2. Залишилась на тому ж рівні
+ 3. Збільшилася
+ 4. Важко відповісти

}

### 5. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Коли, на Вашу думку, повинні відбутися вибори міського голови Києва?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 5.1. Якомога швидше
+ 5.2. Весною 2020 року
+ 5.3. У жовтні 2020 року відповідно до Конституції
+ 5.4. Важко відповісти

### 6. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Якби вибори міського голови м. Києва та депутатів міської ради відбувалися найближчої неділі, чи взяли б Ви участь y
голосуванні?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 6.1. Обов'язково піду голосувати
+ 6.2. Не визначився, але напевно піду
+ 6.3. Не визначився, але напевно не піду
+ 6.4. Не піду голосувати у жодному разі

### 7. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Чи підтримуєте Ви об'єднання м. Києва з містами та селищами-супутниками (Бровари, Бориспіль, Вишневе, Ірпінь тощо)?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 7.1. Повністю підтримую
+ 7.2. Скоріше підтримую
+ 7.3. Скоріше не підтримую
+ 7.4. Взагалі не підтримую
+ 7.5 Важко відповісти

### 8. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Мер м. Києва В. Кличко звернувся до Верховної ради України з питанням приєднання смт Коцюбинське до складу м. Києва. Як
Ви ставитесь до цієї ініціативи?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 8.1. Підтримую приєднання до м. Києва
+ 8.2. Не підтримую, залишив би як є
+ 8.3. Важко відповісти

### 9. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Якби вибори до Верховної Ради України відбувалися найближчої неділі, чи взяли б Ви участь y голосуванні?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 9.1. Обов'язково піду голосувати
+ 9.2. Не визначився, але напевно піду
+ 9.3. Не визначився, але напевно не піду
+ 9.4. Не піду голосувати у жодному разі

### 10. Question:

#### Questionary: Соц. опитування киян

#### Question type:

+ name: Якби вибори Президента України відбувалися найближчої неділі, чи взяли б Ви участь y голосуванні?

+ iconURL: none;

+ beforeCreateClb: {
    show (loading);
}

+ afterCreateClb: {
    show (QuestionType.name);
    show (...ResponseAlternative);
}

+ onValidateClb: {
    check (answer)
}

#### Response alternative:

+ 10.1. Обов'язково піду голосувати
+ 10.2. Не визначився, але напевно піду
+ 10.3. Не визначився, але напевно не піду
+ 10.4. Не піду голосувати у жодному разі









