.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationZoomCV;
.super Ljava/lang/Object;
.source "MiThemeOperationZoomCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndicatorColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0600e9

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getInnerZoomViewType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getOuterSingleZoomViewType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getOuterZoomViewType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getShadowStyleRes()I
    .locals 0

    const p0, 0x7f130173

    return p0
.end method

.method public getSlideBackgroundAlpha()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getSlideIndicatorColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603e0

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getZoomRes(Landroid/content/Context;I)I
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

.method public isSupportSlideViewShowValue()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
