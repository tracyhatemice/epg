"""
pip3 安装Django需要 django>=4.2 !
目前变更为 Django 4.2,请各位参考文章时参考4.2
https://docs.djangoproject.com/zh-hans/4.2/
"""

from pathlib import Path
import os

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/zh-hans/4.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
# 请先随机生成!!!
# python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
SECRET_KEY = "django-insecure-^54gr@%m1!z*e)q#*6iu*p22kxmg9(ac#p_w&5by^*l(gn-8@n"


# SECURITY WARNING: don't run with debug turned on in production!
"""
WARNING: 正式环境下面的True改为False!
"""
DEBUG = os.environ.get("DEBUG", "True").lower() in ("true", "1", "yes")

# 允许的域名
ALLOWED_HOSTS = [os.environ.get("EPG_FQDN"), "localhost"]

# 建议禁止或注释
# DENY ：表示该页面不允许在 frame 中展示，即便是在相同域名的页面中嵌套也不允许
# SAMEORIGIN ：表示该页面可以在相同域名页面的 frame 中展示
# ALLOW-FROM uri ：表示该页面可以在指定来源的 frame 中展示

## X_FRAME_OPTIONS = 'SAMEORIGIN'

# 防止浏览器猜测资产的内容类型
SECURE_CONTENT_TYPE_NOSNIFF = False

# 也是允许域名
CSRF_TRUSTED_ORIGINS = ["https://" + os.environ.get("EPG_FQDN"), "http://"  + os.environ.get("EPG_FQDN"), "http://localhost"]

# Redis缓存，不需要的禁用
# CACHES = {
#     "default": {
#         "BACKEND": "django.core.cache.backends.redis.RedisCache",
#         "LOCATION": "redis://default(用户名):password(密码)@127.0.0.1:6379",
#         # Redis 默认用户名为default , 老版本除外
#     }
# }


INSTALLED_APPS = [
    "django.contrib.admin",
    #'django.contrib.sites',
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "web",
]


MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.cache.FetchFromCacheMiddleware",  # 缓存
    "django.middleware.cache.UpdateCacheMiddleware",  # 缓存
]

ROOT_URLCONF = "epg.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

## 显示SQL语句配置
WSGI_APPLICATION = "epg.wsgi.application"


# 数据库
# https://docs.djangoproject.com/zh-hans/4.2/ref/settings/#databases

# SQlite3 可能会导致获取大量数据时失败，并发太低:
"""
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": BASE_DIR / "db.sqlite3",
    },
}
"""

# For MySQL 数据库:
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.mysql",
        "NAME":  os.environ.get("EPG_DB_NAME", "epg"),  # 数据库名称
        "USER": os.environ.get("EPG_USERNAME", "epg"), # 数据库用户名
        "PASSWORD": os.environ.get("EPG_DB_PASSWORD"), # 数据库密码
        "HOST": os.environ.get("EPG_DB_HOST", "127.0.0.1"),  # 数据库地址
        "PORT": os.environ.get("EPG_DB_PORT", "3306"),  # 默认端口
    },
}


# Password validation
# https://docs.djangoproject.com/zh-hans/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]


# Internationalization
# https://docs.djangoproject.com/zh-hans/4.2/topics/i18n/

LANGUAGE_CODE = "zh-hans"

TIME_ZONE = "Asia/Shanghai"

USE_I18N = True

USE_L10N = True

USE_TZ = True

# 静态文件需要在Nginx配置
STATIC_URL = "/static/"
STATICFILES_DIRS = [os.path.join(BASE_DIR, "static")]

# Default primary key field type
# https://docs.djangoproject.com/zh-hans/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"
