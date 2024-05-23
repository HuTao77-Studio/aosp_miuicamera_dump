.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopAlertCV;
.super Ljava/lang/Object;
.source "MiThemeOperationTopAlertCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawChildRoundRect(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    add-float v1, p2, v0

    add-float v2, p3, v0

    sub-float v3, p4, v0

    sub-float v0, p5, v0

    const/high16 v4, 0x40c00000    # 6.0f

    div-float v5, p6, v4

    div-float v4, p7, v4

    move-object p0, p1

    move p1, v1

    move p2, v2

    move p3, v3

    move p4, v0

    move p5, v5

    move p6, v4

    move-object p7, p8

    .line 2
    invoke-virtual/range {p0 .. p7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawMainRoundRect(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070446

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    add-float v1, p2, v0

    add-float v2, p3, v0

    sub-float v3, p4, v0

    sub-float v0, p5, v0

    const/high16 v4, 0x40a00000    # 5.0f

    div-float v5, p6, v4

    div-float v4, p7, v4

    move-object p0, p1

    move p1, v1

    move p2, v2

    move p3, v3

    move p4, v0

    move p5, v5

    move p6, v4

    move-object p7, p8

    .line 2
    invoke-virtual/range {p0 .. p7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAnimatorDuration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getFastMotionTopAlertOtherSpace(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFastMotionTopAlertSpace(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070264

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFastmotionTopAlert(Landroid/content/Context;I)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070343

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getPaintColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603c5

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getRecordingTimeDenominatorColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f06037f

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTopAlertBgRes(I)I
    .locals 0

    const-string p0, "_cv_bg"

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTopAlertBgRes(Landroid/content/Context;I)I
    .locals 0

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p2

    :cond_0
    const-string p0, "_cv_bg"

    .line 1
    invoke-static {p1, p2, p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayRes(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTopAlertInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    .line 1
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    return-object p0
.end method

.method public getTopAlertRes(I)I
    .locals 0

    const-string p0, "_cv"

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTopAlertRes(Landroid/content/Context;I)I
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

.method public getTopAlertSlideSwitchButtonIndicatorColor(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const p1, 0x7f0603c5

    invoke-virtual {p0, p1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public isSetShadowNeedDelay()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setChildMargin(Landroid/widget/LinearLayout$LayoutParams;III)V
    .locals 1

    const/4 p0, 0x4

    if-nez p4, :cond_0

    .line 1
    invoke-virtual {p1, p2, p2, p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    if-ne p4, p3, :cond_1

    .line 2
    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1, v0, p2, p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method public setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V
    .locals 0

    return-void
.end method

.method public setPaintAlpha(Landroid/graphics/Paint;)V
    .locals 0

    const/16 p0, 0x33

    .line 1
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p0, 0x40a00000    # 5.0f

    .line 2
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setTextShadow(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result p0

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-nez p0, :cond_0

    int-to-float p0, p2

    .line 2
    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public setTopAlertSlideSwitchButtonNormalColor(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603b8

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setNormalColor(I)V

    return-void
.end method

.method public setTopAlertSlideSwitchButtonSelectColor(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603ba

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setSelectColor(I)V

    return-void
.end method

.method public setTopAlertTextSize(Landroid/widget/TextView;)V
    .locals 1

    const/4 p0, 0x2

    const v0, 0x415bd70a    # 13.74f

    .line 1
    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
