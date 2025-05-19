# README.md
site-root/
│
├── .dockerignore        # исключения для Docker
├── .gitattributes       # правила Git / LFS / eol
├── .gitignore           # исключения для Git
├── Dockerfile           # сборка контейнера Nginx
├── LICENSE              # лицензия (MIT, Apache и т.п.)
├── README.md            # описание проекта
│
├── assets/              # “сырой” код и ресурсы до сборки
│   ├── css/
│   │   ├── style.css           # ваши стили
│   │   └── vendor/             # сторонние (Bootstrap, Slick и т.п.)
│   ├── js/
│   │   ├── main.js             # ваши скрипты
│   │   └── vendor/             # сторонние библиотеки (jQuery и др.)
│   ├── img/
│   │   ├── banners/            # баннеры (все размеры и варианты)
│   │   ├── icons/              # иконки SVG/PNG
│   │   └── logos/              # логотипы
│   ├── fonts/                  # веб-шрифты (.woff, .woff2, .ttf)
│   └── media/                  # видео, аудио, PDF и др.
│
├── public/              # готовая статика, отдаваемая сервером
│   ├── index.html             # главная страница
│   ├── payment.html           # страница оплаты
│   └── admin/
│       ├── login.html         # страница авторизации
│       └── dashboard.html     # админ-панель
│
├── templates/           # для шаблонизаторов (Flask, Django, Express)
│   ├── layouts/               # базовые обёртки (header/footer)
│   ├── partials/              # фрагменты (меню, подвал, карточки)
│   └── pages/                 # конкретные шаблоны страниц
│       ├── home.html
│       └── payment.html
│
├── config/              # конфигурации серверов, CI/CD и т.п.
│   └── nginx.conf             # Nginx для отдачи public/
│
└── docs/                # дополнительная документация
    └── architecture.png      # схема структуры проекта
