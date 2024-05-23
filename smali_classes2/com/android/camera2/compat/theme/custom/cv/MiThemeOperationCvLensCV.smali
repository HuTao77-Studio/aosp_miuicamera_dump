.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationCvLensCV;
.super Ljava/lang/Object;
.source "MiThemeOperationCvLensCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;


# static fields
.field public static final FLOAT_ZOOM_RATIO_CV_LENS_35MM:F = 1.4f

.field public static final FLOAT_ZOOM_RATIO_CV_LENS_50MM:F = 2.0f

.field public static final FLOAT_ZOOM_RATIO_CV_LENS_90MM:F = 3.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    .line 1
    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x12

    .line 2
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 3
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    const v2, 0x7f120442

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07078d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07078f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 12
    invoke-virtual {v1, v3, v5, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07078e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v2, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    return-void
.end method

.method public static synthetic OooO0O0(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    .line 3
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x53

    .line 4
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    const p0, 0x7f0a0116

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLens()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0118

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v3, 0x7f130172

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    const/4 v2, -0x1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v6

    goto :goto_1

    :pswitch_1
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    goto :goto_1

    :pswitch_2
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v5

    goto :goto_1

    :pswitch_3
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v7

    :cond_1
    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "90mm"

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const-string v0, "50mm"

    .line 13
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const-string v0, "35mm"

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f080b85

    goto :goto_3

    :cond_6
    const p0, 0x7f0800c5

    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setBeautyIconBg(Landroid/view/View;)V

    new-array p0, v6, [Landroid/view/View;

    aput-object p1, p0, v7

    .line 23
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getCVLENSFetcher(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/PortraitCVLENSFetcher;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationCvLensCV;->getCVLENSFetcher(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/compat/theme/custom/cv/cvlens/CVPortraitCVLENSFetcher;

    move-result-object p0

    return-object p0
.end method

.method public getCVLENSFetcher(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/compat/theme/custom/cv/cvlens/CVPortraitCVLENSFetcher;
    .locals 0

    .line 2
    new-instance p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/CVPortraitCVLENSFetcher;

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/cvlens/CVPortraitCVLENSFetcher;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V

    return-object p0
.end method

.method public getComponentRunningCvLens(Lcom/android/camera/data/data/runing/DataItemRunning;)Lcom/android/camera/data/data/runing/ComponentRunningCvLens;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;

    invoke-direct {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    return-object p0
.end method

.method public getCustomView(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f0d0034

    return p0
.end method

.method public getCvGuideCallBack(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;
    .locals 0

    .line 1
    new-instance p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0o0;

    invoke-direct {p0, p1}, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0o0;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getCvLensRes(Landroid/content/Context;I)I
    .locals 0

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p2

    :cond_0
    const-string p0, "_cv"

    .line 1
    invoke-static {p1, p2, p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayRes(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getCvLensUpdaterListener(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 0

    .line 1
    new-instance p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0Oo;

    invoke-direct {p0, p1}, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0Oo;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getNormalPanelEntranceItemDesc()I
    .locals 0

    const p0, 0x7f120442

    return p0
.end method

.method public getNormalPanelEntranceItemRes()I
    .locals 0

    const p0, 0x7f0805c0

    return p0
.end method

.method public isCVLensUWBokeh()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLens()Ljava/lang/String;

    move-result-object p0

    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCvVersion()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setCvLensZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedCvLens()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLens()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x40700000    # 3.75f

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/high16 p0, 0x40000000    # 2.0f

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const p0, 0x3fb33333    # 1.4f

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showCvLens()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CvLensProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
