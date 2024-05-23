.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;
.super Ljava/lang/Object;
.source "MiThemeWidgetCameraCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/protocol/protocols/ConfigChanges;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->setFilter(I)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/protocol/protocols/ConfigChanges;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->setCVLens(Ljava/lang/String;)V

    return-void
.end method

.method private checkNameResId(Ljava/util/ArrayList;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getNameResId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private initFilterComponent(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFilter()Lcom/android/camera/data/data/runing/ComponentRunningFilter;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mapToItems(Ljava/util/ArrayList;I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->setClosed(ZI)V

    return-void
.end method

.method private setWidgetCameraFilter(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_7

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "filter_LVIV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_1
    const-string v1, "filter_LNAT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "filter_LBWNAT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_3
    const-string v1, "filter_LBWHC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    const p1, 0x7f1202e1

    goto :goto_1

    :cond_2
    const p1, 0x7f1202dd

    goto :goto_1

    :cond_3
    const p1, 0x7f1202e0

    goto :goto_1

    :cond_4
    const p1, 0x7f1202de

    .line 2
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;->checkNameResId(Ljava/util/ArrayList;I)I

    move-result p1

    if-eqz p1, :cond_5

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0O;

    invoke-direct {v2, p1}, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0O;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl()Ljava/util/Optional;

    move-result-object p1

    sget-object v1, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;->initFilterComponent(Ljava/util/ArrayList;)V

    const-string p0, "filter.widget"

    const-string p1, "camera_call"

    .line 7
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackWidgetCamera(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOoo()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvTypeHintShow()Z

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    const-string p0, "android.intent.extra.CAMERA_FILTER_MODE"

    .line 10
    invoke-virtual {p2, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p0, "android.intent.extra.USE_REAR_CAMERA"

    .line 11
    invoke-virtual {p2, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p0, "com.android.systemui.camera_launch_source"

    .line 12
    invoke-virtual {p2, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p0, "android.intent.action.MAIN"

    .line 13
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->setIsWidgetLauncher(Z)V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ea5012b -> :sswitch_3
        -0x65fb0d99 -> :sswitch_2
        -0x351dee64 -> :sswitch_1
        -0x351dcf62 -> :sswitch_0
    .end sparse-switch
.end method

.method private setWidgetCameraLens(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedCvLens()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "lens_none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p0, v4

    goto :goto_0

    :sswitch_1
    const-string v0, "lens_90mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p0, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "lens_50mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p0, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "lens_35mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p0, v3

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_4

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    .line 3
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningCvLens()Lcom/android/camera/data/data/runing/ComponentRunningCvLens;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningCvLens;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "lens.widget"

    const-string p1, "camera_call"

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackWidgetCamera(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOoo()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvTypeHintShow()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    const-string p0, "android.intent.extra.CAMERA_LENS_MODE"

    .line 9
    invoke-virtual {p2, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p0, "android.intent.extra.USE_REAR_CAMERA"

    .line 10
    invoke-virtual {p2, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p0, "com.android.systemui.camera_launch_source"

    .line 11
    invoke-virtual {p2, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p0, "android.intent.action.MAIN"

    .line 12
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->setIsWidgetLauncher(Z)V

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0xd330a23 -> :sswitch_3
        0xd33e01c -> :sswitch_2
        0xd35b198 -> :sswitch_1
        0xd4eb5d9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getWidgetIntentInfo(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getFilterMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;->setWidgetCameraFilter(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getLensMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;->setWidgetCameraLens(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
