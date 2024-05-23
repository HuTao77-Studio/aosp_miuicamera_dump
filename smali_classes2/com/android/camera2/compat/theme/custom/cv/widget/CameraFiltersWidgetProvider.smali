.class public Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CameraFiltersWidgetProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final FILTER_LBWHC:Ljava/lang/String;

.field public final FILTER_LBWNAT:Ljava/lang/String;

.field public final FILTER_LNAT:Ljava/lang/String;

.field public final FILTER_LVIV:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const-string v0, "filter_LVIV"

    .line 2
    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->FILTER_LVIV:Ljava/lang/String;

    const-string v0, "filter_LBWNAT"

    .line 3
    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->FILTER_LBWNAT:Ljava/lang/String;

    const-string v0, "filter_LNAT"

    .line 4
    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->FILTER_LNAT:Ljava/lang/String;

    const-string v0, "filter_LBWHC"

    .line 5
    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->FILTER_LBWHC:Ljava/lang/String;

    return-void
.end method

.method public static getResId(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->warning(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method private initViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "filter_LVIV"

    .line 1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "filter_LBWNAT"

    .line 2
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "filter_LNAT"

    .line 3
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "filter_LBWHC"

    .line 4
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setUpWidgetIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/camera/Camera;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.extra.CAMERA_MODE"

    const-string v1, "CAPTURE"

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.CAMERA_FILTER_MODE"

    .line 3
    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USE_REAR_CAMERA"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.android.systemui.camera_launch_source"

    const-string v1, "desk_widget_launch"

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.media.action.VOICE_COMMAND"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x8000

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p4, p0, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 9
    const-class p1, Lcom/android/camera/R$id;

    invoke-static {p3, p1}, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->getResId(Ljava/lang/String;Ljava/lang/Class;)I

    move-result p1

    invoke-virtual {p2, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p3, v3

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->initViewList(Ljava/util/List;)V

    .line 5
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0d00f8

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move v6, v2

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    .line 6
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7
    invoke-direct {p0, p1, v5, v7, v6}, Lcom/android/camera2/compat/theme/custom/cv/widget/CameraFiltersWidgetProvider;->setUpWidgetIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    invoke-virtual {p2, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
