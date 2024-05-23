.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;
.super Ljava/lang/Object;
.source "MiThemeOperationManualCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoBackgroundResDrawable(I)I
    .locals 0

    const p0, 0x7f0802cd

    return p0
.end method

.method public getAutoImageView(Landroid/content/Context;)Lcom/android/camera/ui/ActivateImageView;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera2/compat/theme/custom/cv/manual/CvActivateImageView;

    invoke-direct {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/manual/CvActivateImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    .line 2
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 4
    invoke-interface {p1, p0, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-object p0
.end method

.method public getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const p2, 0x7f08041b

    const v0, 0x7f08041d

    goto :goto_0

    :cond_0
    const p2, 0x7f0803bf

    const v0, 0x7f0803bd

    goto :goto_0

    :cond_1
    const p2, 0x7f080428

    const v0, 0x7f08042a

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p2, p0, v1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {v0, v1, v1, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    return-object v0
.end method

.method public getComponentManuallyDualLensItems(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xaf

    if-eq p1, v0, :cond_6

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o00()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v5, 0x7f120814

    const-string v6, "macro"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v5, 0x7f12081d

    const-string v6, "ultra"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0x7f12081f

    const-string v12, "wide"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooo00()Z

    move-result v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_4

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0OO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ltz v0, :cond_4

    .line 10
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v6, 0x7f120818

    const-string v7, "tele"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ltz v0, :cond_4

    .line 12
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v6, 0x7f12081a

    const-string v7, "tele"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0OO()Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne p1, v1, :cond_5

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    :cond_5
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const v4, 0x7f120819

    const-string v5, "Standalone"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_6
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const v10, 0x7f12081f

    const-string v11, "wide"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0OO()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const v4, 0x7f120819

    const-string v5, "Standalone"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-object p0
.end method

.method public bridge synthetic getExtraRecyclerViewAdapter(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;->getExtraRecyclerViewAdapter(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)Lcom/android/camera2/compat/theme/custom/cv/manual/ExtraRecyclerViewAdapterCV;

    move-result-object p0

    return-object p0
.end method

.method public getExtraRecyclerViewAdapter(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)Lcom/android/camera2/compat/theme/custom/cv/manual/ExtraRecyclerViewAdapterCV;
    .locals 7

    .line 2
    new-instance p0, Lcom/android/camera2/compat/theme/custom/cv/manual/ExtraRecyclerViewAdapterCV;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/compat/theme/custom/cv/manual/ExtraRecyclerViewAdapterCV;-><init>(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)V

    return-object p0
.end method

.method public getIconResDrawable(Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x4075183a

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x35

    if-eq p0, v0, :cond_1

    const/16 v0, 0x36

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :pswitch_1
    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v5

    goto :goto_1

    :pswitch_2
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const-string p0, "6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_1
    const-string p0, "5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_2
    const-string p0, "manual"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v6

    :goto_1
    if-eqz p0, :cond_9

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    return v6

    :cond_4
    const p0, 0x7f080697

    return p0

    :cond_5
    const p0, 0x7f08067d

    return p0

    :cond_6
    const p0, 0x7f080686

    return p0

    :cond_7
    const p0, 0x7f08069f

    return p0

    :cond_8
    const p0, 0x7f08068f

    return p0

    :cond_9
    const p0, 0x7f08041b

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconShadowResDrawable(Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x4075183a

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x35

    if-eq p0, v0, :cond_1

    const/16 v0, 0x36

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :pswitch_1
    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v5

    goto :goto_1

    :pswitch_2
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const-string p0, "6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_1
    const-string p0, "5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_2
    const-string p0, "manual"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v6

    :goto_1
    if-eqz p0, :cond_9

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    return v6

    :cond_4
    const p0, 0x7f080699

    return p0

    :cond_5
    const p0, 0x7f08067f

    return p0

    :cond_6
    const p0, 0x7f080688

    return p0

    :cond_7
    const p0, 0x7f0806a1

    return p0

    :cond_8
    const p0, 0x7f080691

    return p0

    :cond_9
    const p0, 0x7f08041d

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getManuallyAdapter(ILandroid/view/View$OnClickListener;Ljava/util/List;I)Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;->getManuallyAdapter(ILandroid/view/View$OnClickListener;Ljava/util/List;I)Lcom/android/camera2/compat/theme/custom/cv/manual/ManuallyAdapterCV;

    move-result-object p0

    return-object p0
.end method

.method public getManuallyAdapter(ILandroid/view/View$OnClickListener;Ljava/util/List;I)Lcom/android/camera2/compat/theme/custom/cv/manual/ManuallyAdapterCV;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;I)",
            "Lcom/android/camera2/compat/theme/custom/cv/manual/ManuallyAdapterCV;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/android/camera2/compat/theme/custom/cv/manual/ManuallyAdapterCV;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera2/compat/theme/custom/cv/manual/ManuallyAdapterCV;-><init>(ILandroid/view/View$OnClickListener;Ljava/util/List;I)V

    return-object p0
.end method

.method public getProRightBackgroundDrawable()I
    .locals 0

    const p0, 0x7f0800b2

    return p0
.end method

.method public getValueSelectedDrawable(Lcom/android/camera/data/data/ComponentData;I)I
    .locals 6

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    instance-of p2, p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    int-to-double p0, p0

    const-wide v0, 0x4082c00000000000L    # 600.0

    cmpl-double p2, p0, v0

    if-ltz p2, :cond_1

    const p0, 0x7f0803ca

    return p0

    :cond_1
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_2

    const p0, 0x7f0803cf

    return p0

    :cond_2
    const p0, 0x7f0803c5

    return p0

    .line 4
    :cond_3
    instance-of p1, p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p2, -0x4075183a

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, p2, :cond_6

    const/16 p2, 0x35

    if-eq p1, p2, :cond_5

    const/16 p2, 0x36

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v3

    goto :goto_1

    :pswitch_1
    const-string p1, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v5

    goto :goto_1

    :pswitch_2
    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    const-string p1, "6"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v2

    goto :goto_1

    :cond_5
    const-string p1, "5"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v4

    goto :goto_1

    :cond_6
    const-string p1, "manual"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v1

    goto :goto_1

    :cond_7
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_d

    if-eq p0, v5, :cond_c

    if-eq p0, v4, :cond_b

    if-eq p0, v3, :cond_a

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_8

    goto :goto_2

    :cond_8
    const p0, 0x7f080695

    return p0

    :cond_9
    const p0, 0x7f08067b

    return p0

    :cond_a
    const p0, 0x7f080684

    return p0

    :cond_b
    const p0, 0x7f08069d

    return p0

    :cond_c
    const p0, 0x7f08068d

    return p0

    :cond_d
    const p0, 0x7f08041e

    return p0

    :cond_e
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValueSelectedShadowDrawable(Lcom/android/camera/data/data/ComponentData;I)I
    .locals 6

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    instance-of p2, p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    int-to-double p0, p0

    const-wide v0, 0x4082c00000000000L    # 600.0

    cmpl-double p2, p0, v0

    if-ltz p2, :cond_1

    const p0, 0x7f0803cd

    return p0

    :cond_1
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_2

    const p0, 0x7f0803d1

    return p0

    :cond_2
    const p0, 0x7f0803c8

    return p0

    .line 4
    :cond_3
    instance-of p1, p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p2, -0x4075183a

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, p2, :cond_6

    const/16 p2, 0x35

    if-eq p1, p2, :cond_5

    const/16 p2, 0x36

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v3

    goto :goto_1

    :pswitch_1
    const-string p1, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v5

    goto :goto_1

    :pswitch_2
    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    const-string p1, "6"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v2

    goto :goto_1

    :cond_5
    const-string p1, "5"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v4

    goto :goto_1

    :cond_6
    const-string p1, "manual"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v1

    goto :goto_1

    :cond_7
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_d

    if-eq p0, v5, :cond_c

    if-eq p0, v4, :cond_b

    if-eq p0, v3, :cond_a

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_8

    goto :goto_2

    :cond_8
    const p0, 0x7f08069b

    return p0

    :cond_9
    const p0, 0x7f080682

    return p0

    :cond_a
    const p0, 0x7f08068b

    return p0

    :cond_b
    const p0, 0x7f0806a4

    return p0

    :cond_c
    const p0, 0x7f080694

    return p0

    :cond_d
    const p0, 0x7f08041f

    return p0

    :cond_e
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHistogramLayoutParams(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
