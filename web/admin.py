from django.contrib import admin
from .models import Channel, Epg, Crawl_log, Channel_list

admin.site.site_header = "EPG 频道配置"
admin.site.site_title = "EPG"
admin.site.index_title = "后台首页"


# Register your models here.
class ChannelAdmin(admin.ModelAdmin):
    list_display = ("id", "tvg_name", "name", "source", "last_program_date", "ineed")
    # list_per_page设置每页显示多少条记录
    list_per_page = 50
    # ordering设置默认排序字段
    ordering = ("id",)
    # 设置哪些字段可以点击进入编辑界面
    list_display_links = ("tvg_name", "name")
    # 筛选器
    list_filter = ("sort",)  # 过滤器
    search_fields = ("tvg_name", "name", "channel_id")  # 搜索字段


admin.site.register(Channel, ChannelAdmin)


class EpgAdmin(admin.ModelAdmin):
    list_display = ("channel_id", "starttime", "title", "program_date", "source")
    date_hierarchy = "program_date"
    search_fields = ("channel_id",)  # 搜索字段


admin.site.register(Epg, EpgAdmin)


class Crawl_logAdmin(admin.ModelAdmin):
    list_display = ("dt", "msg", "level")
    search_fields = ("msg",)  # 来源列表搜索字段


admin.site.register(Crawl_log, Crawl_logAdmin)


class Channel_listAdmin(admin.ModelAdmin):
    list_display = (
        "inner_channel_id",
        "inner_name",
        "out_channel_id",
        "out_name",
        "source",
    )
    list_filter = ("source",)  # 过滤器
    list_display_links = ("inner_name", "out_name")
    search_fields = ("out_name",)  # 来源列表搜索字段


admin.site.register(Channel_list, Channel_listAdmin)
