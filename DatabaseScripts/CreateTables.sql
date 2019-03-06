-----------------DROP TABLES------------------------
DROP TABLE USER_TYPES;
DROP TABLE RF_USER_LEGAL_TYPE;
DROP TABLE USER_GENERAL_INFORMATION;
DROP TABLE USERS;
DROP TABLE RF_PAGE_COMPONENT;
DROP TABLE RF_SERVICE;
DROP TABLE RF_SUB_SERVICE;
----------------------------------------------------
CREATE TABLE USER_TYPES (
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL ,
  TYPE_NAME VARCHAR(50) NOT NULL
)
  ENGINE = InnoDB;

INSERT INTO USER_TYPES VALUES (null, 'contractor');
INSERT INTO USER_TYPES VALUES (null, 'customer');
INSERT INTO USER_TYPES VALUES (null, 'admin');
COMMIT;
----------------------------------------------------
CREATE TABLE RF_USER_LEGAL_TYPE (
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL ,
  LEGAL_NAME VARCHAR(50) NOT NULL,
  TYPE_STATUS VARCHAR(2) NOT NULL
)
  ENGINE = InnoDB;

INSERT INTO RF_USER_LEGAL_TYPE VALUES (null, 'legal', 'L');
INSERT INTO RF_USER_LEGAL_TYPE VALUES (null, 'person', 'P');
COMMIT;
----------------------------------------------------
CREATE TABLE USERS (
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  USER_LOGIN VARCHAR(100) NOT NULL,
  USER_PASSWORD VARCHAR(500) NOT NULL,
  CONFIRM_EMAIL VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

INSERT INTO users VALUES (null, 'Unknown', 'Unknown', 'Unknown');
COMMIT;
----------------------------------------------------
CREATE TABLE USER_GENERAL_INFORMATION (
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  USER_LEGAL_TYPE_ID INT NOT NULL,
  USER_ID INT NOT NULL,
  FIRST_NAME VARCHAR(100),
  SECOND_NAME VARCHAR(100),
  COMPANY_NAME VARCHAR(100),
  DIRECTOR_FIRST_NAME VARCHAR(100),
  DIRECTOR_LAST_NAME VARCHAR(100),
  CONTACT_PERSON varchar(100),
  E_MAIL varchar(100),
  MOBILE VARCHAR(30),
  PHONE VARCHAR(30),
  WEB_SITE VARCHAR(100),
  PHOTO_LOGO_PATH VARCHAR(500),
  COUNTRY VARCHAR(200),
  CITY VARCHAR(200),
  ADDRESS VARCHAR(200),
  FOREIGN KEY (USER_LEGAL_TYPE_ID) REFERENCES rf_user_legal_type(ID),
  FOREIGN KEY (USER_ID) REFERENCES users(ID)
)
  ENGINE = InnoDB;
----------------------------------------------------
CREATE TABLE RF_SERVICE (
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  RU_NAME VARCHAR(200),
  EN_NAME VARCHAR(200),
  KZ_NAME VARCHAR(200)
)
  ENGINE = InnoDB;

INSERT INTO RF_SERVICE VALUES (null, 'Строительство и ремонт', 'Construction and repair', null);
INSERT INTO RF_SERVICE VALUES (null, 'Бытовые услуги', 'Domestic services', null);
INSERT INTO RF_SERVICE VALUES (null, 'Бизнес услуги', 'Business services', null);
INSERT INTO RF_SERVICE VALUES (null, 'Логистика и хранение', 'Logistics and storage', null);
INSERT INTO RF_SERVICE VALUES (null, 'Транспорт', 'Transport', null);
INSERT INTO RF_SERVICE VALUES (null, 'Красота, здоровье, спорт', 'Beauty, health, sport', null);
INSERT INTO RF_SERVICE VALUES (null, 'Маркетинг, реклама, PR', 'Marketing, Advertising, PR', null);
INSERT INTO RF_SERVICE VALUES (null, 'Компьютеры и телефоны', 'Computers and phones', null);
INSERT INTO RF_SERVICE VALUES (null, 'Образование', 'Education', null);
INSERT INTO RF_SERVICE VALUES (null, 'Events and holidays', 'События и праздники', null);
INSERT INTO RF_SERVICE VALUES (null, 'Туризм и путешествия', 'Tourism and travel', null);
INSERT INTO RF_SERVICE VALUES (null, 'Разное', 'Other', null);
INSERT INTO RF_SERVICE VALUES (null, 'Электротехнические товары и услуги', 'Electrotechnical products and services', null);
INSERT INTO RF_SERVICE VALUES (null, 'Полиграфические и дизайнерские услуги', 'Printing and design services', null);
COMMIT;
----------------------------------------------------
CREATE TABLE RF_SUB_SERVICE(
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  SERVICE_ID INT NOT NULL,
  RU_NAME VARCHAR(200),
  EN_NAME VARCHAR(200),
  KZ_NAME VARCHAR(200),
  FOREIGN KEY (SERVICE_ID) REFERENCES RF_SERVICE(ID)
)
  ENGINE = InnoDB;

INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Сантехника', 'Plumbing', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Архитектурно-строительное проектирование', 'Architectural and construction design', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Мебель на заказ', 'Custom-made furniture', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Ремонт и внутреняя отделка', 'Repair and interior decoration', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Строительные услуги', 'Construction services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Электрика', 'Electrician', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Окна и двери', 'Windows and doors', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 1, 'Металлоизделия, сварочные работы', 'Hardware, welding', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 2, 'Ремонт бытовой техники', 'Repair of household appliances', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 2, 'Уборка и чистка', 'Cleaning and cleaning', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 2, 'Уход за детьми', 'Childcare', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 2, 'Дезинфекция и дератизация', 'Disinfection and disinfection', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 2, 'Ремонт сотовых телефонов', 'Cell phone repair', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 2, 'Пошив и ремонт одежды', 'Sewing and repair of clothes', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 2, 'Ремонт обуви, сумок, кожгалантереи', 'Repair of shoes, bags, leather goods', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 3, 'Финансы и бухгалтерия', 'Finance and Accounting', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 3, 'Юридические услуги', 'Legal services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 3, 'Переводы и тексты', 'Translations and texts', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 3, 'Оценочные компании', 'Evaluation companies', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 3, 'Страховые компании', 'Insurance companies', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 3, 'Нотариальные услуги', 'Notary Services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 3, 'Частные судебные исполнители', 'Private bailiffs', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 4, 'Транспортная логистика', 'Transport logistics', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 4, 'Складские услуги', 'Warehouse services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 4, 'Таможенные услуги', 'Customs services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 4, 'Курьерские услуги', 'Courier services', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 5, 'Перевозки и такси', 'Transportation and taxi', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 5, 'Прокат автомобилей', 'Car rental', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 5, 'Автосервис', 'Car service', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Косметология и макияж', 'Cosmetology and makeup', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Маникюр и педикюр', 'Manicure and pedicure', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Парикмахерские услуги', 'Hairdresser''s services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Эпиляция', 'Epilation', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Медицина', 'The medicine', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Фитнес клубы', 'Fitness clubs', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Спортивные секции', 'Sport sections', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Бассейны', 'Swimming pools', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 6, 'Спортивные товары', 'Sporting goods', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 7, 'Наружная реклама', 'Outdoor advertising', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 7, 'Внутренняя реклама', 'Indoor Advertising', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 7, 'Реклама в СМИ', 'Advertising in the media', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 7, 'Маркетинговые услуги', 'Marketing services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 7, 'Распространение печатной продукции', 'Printed products distribution', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 8, 'Компьютеры и интернет', 'Computers and Internet', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 8, 'Телефоны и электроника', 'Phones and electronics', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 9, 'Иностранные языки', 'Foreign languages', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 9, 'Репетиторы и частные уроки', 'Tutoring and private lessons', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 9, 'Курсы и семинары', 'Courses and seminars', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 10, 'Рестораны и кулинария', 'Restaurants and cooking', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 10, 'Фото- и видеосъемка', 'Photo and video', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 10, 'Организация и проведение', 'Organization and conduct', null);

INSERT INTO RF_SUB_SERVICE VALUES (null, 14, 'Услуги полиграфии, типографии', 'Printing services', null);
INSERT INTO RF_SUB_SERVICE VALUES (null, 14, 'Дизайнерские услуги', 'Design Services', null);
COMMIT;
----------------------------------------------------
CREATE TABLE RF_PAGE_COMPONENT (
  ID                     INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  COMPONENET_DESCRIPTION VARCHAR(200),
  RU_NAME                VARCHAR(200),
  EN_NAME                VARCHAR(200),
  KZ_NAME                VARCHAR(200)
)
  ENGINE = InnoDB;


INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SEARCH_BUTTON', 'Поиск', 'Search', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SEARCH_LABEL', 'Поиск', 'Search', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SERVICES_SEARCH_BUTTON', 'Поиск Услуги', 'Search for service', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SERVICES_SEARCH_LABEL', 'Поиск Услуги', 'Search for service', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'OFFERS_SEARCH_BUTTON', 'Поиск Заявки', 'Search for offer', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'OFFERS_SEARCH_LABEL', 'Поиск Заявки', 'Search for offer', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADD_BUTTON', 'Добавить', 'Add', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADD_LABEL', 'Добавить', 'Add', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADD_SERVICE_BUTTON', 'Добавить Услугу', 'Add service', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADD_SERVICE_LABEL', 'Добавить Услугу', 'Add service', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADD_OFFER_BUTTON', 'Добавить Заявку', 'Add offer', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADD_OFFER_LABEL', 'Добавить Заявку', 'Add offer', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'PROMOTIONS_BUTTON', 'Акции', 'Promotions', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'PROMOTIONS_LABEL', 'Акции', 'Promotions', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SERVICE_BUTTON', 'Услуга', 'Service', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SERVICE_LABEL', 'Услуга', 'Service', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'OFFER_BUTTON', 'Заявка', 'Offer', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'OFFER_LABEL', 'Заявка', 'Offer', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'LOGIN_BUTTON', 'Вход', 'Log In', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'LOGIN_LABEL', 'Вход', 'Log In', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'LOGOUT_BUTTON', 'Выход', 'Logout', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'LOGOUT_LABEL', 'Выход', 'Logout', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'REGISTRATION_BUTTON', 'Регитрация', 'Registration', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'REGISTRATION_LABEL', 'Регистрация', 'Registration', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'LOGO', 'Логотип', 'Logo', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'EN_LAN_BUTTON', 'ENG', 'ENG', 'ENG');
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'EN_LAN_LABEL', 'ENG', 'ENG', 'ENG');
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'RU_LAN_BUTTON', 'РУС', 'РУС', 'РУС');
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'RU_LAN_LABEL', 'РУС', 'РУС', 'РУС');
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'KZ_LAN_BUTTON', 'ҚАЗ', 'ҚАЗ', 'ҚАЗ');
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'KZ_LAN_LABEL', 'ҚАЗ', 'ҚАЗ', 'ҚАЗ');
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'TERMA_AND_CONDITION_LABEL', 'Условия и положения', 'Terms and conditions', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SUBMIT_BUTTON', 'Отправить', 'Submit', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SUBMIT_LABEL', 'Отправить', 'Submit', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FORGOT_PASSWORD_LABEL', 'Забыли пароль?', 'Forgot password?', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'EMAIL_PLACEHOLDER', 'Эл. адрес', 'E-Mail', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'PASSWORD_PLACEHOLDER', 'Пароль', 'Password', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'PHONE_PLACEHOLDER', 'Телефон (прим. +75551234567)', 'Phone e.g. +75551234567', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_COMAND_BUTTON', 'Команда', 'Team', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_COMAND_LABEL', 'Команда', 'Team', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_FORUS_BUTTON', 'О Нас', 'Aboit Us', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_FORUS_LABEL', 'О Нас', 'Aboit Us', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_CONTACT_BUTTON', 'Контакты', 'Contacts', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_CONTACT_LABEL', 'Контакты', 'Contacts', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_USER_AGREEMENT_BUTTON', 'Пользовательское соглашение', 'User Agreement', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'FOOTHER_USER_AGREEMENT_LABEL', 'Пользовательское соглашение', 'User Agreement', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SERVICE_CATEGORY_LABEL', 'Категория', 'Category', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SUB_SERVICE_CATEGORY_LABEL', 'Подкатегория', 'Subcategory', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'MAIN_IMAGE_LABEL', 'Осноное изображение', 'Main Image', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADDITIONAL_IMAGE_BUTTON', 'Дополнительное изображение', 'Additioanal Image', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADDITIONAL_IMAGE_LABEL', 'Дополнительное изображение', 'Additioanal Image', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'TITLE_LABEL', 'Заглавие', 'Title', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'DESCRIPTION_LABEL', 'Описание', 'Description', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'PRICE_LABEL', 'Цена', 'Price', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'CITY_LABEL', 'Город', 'City', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'PHONE_LABEL', 'Телефон (прим. +75551234567)', 'Phone e.g. +75551234567', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADDRESS_LABEL', 'Адрес', 'Address', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADDITIONAL_ADDRESS_BUTTON', 'Дполнительный адрес', 'Additional address', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'ADDITIONAL_ADDRESS_LABEL', 'Дполнительный адрес', 'Additional address', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SAVE_BUTTON', 'Сохранить', 'Save', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'SAVE_LABEL', 'Сохранить', 'Save', null);
INSERT INTO RF_PAGE_COMPONENT VALUES (null, 'PRIVACY_POLICY_LABEL', 'Конфидецифльность', 'Privacy Policy', null);
COMMIT;
----------------------------------------------------
CREATE TABLE COMMENT (
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  USER_ID INT NOT NULL,
  TITLE VARCHAR(100),
  DESCRIPTION VARCHAR(1000),
  RATING INT(2),
  FOREIGN KEY (USER_ID) REFERENCES users(ID)
)
  ENGINE = InnoDB;
----------------------------------------------------
CREATE TABLE TOPICS (
  ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  GENERAL_INFO_ID INT NOT NULL,
  TITLE VARCHAR(100),
  MAIN_IMAGE_PATH VARCHAR(500),
  IMAGES_PATHS VARCHAR(2000),
  DESCRIPTION VARCHAR(2000),
  PRICE DECIMAL,
  AVERAGE_RATING INT,
  FOREIGN KEY (GENERAL_INFO_ID) REFERENCES user_general_information(ID)
)
  ENGINE = InnoDB;
----------------------------------------------------