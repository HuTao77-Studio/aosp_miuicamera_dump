.class public Lcom/android/camera2/compat/theme/custom/cv/MithemeOperationFocusCV;
.super Ljava/lang/Object;
.source "MithemeOperationFocusCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraFocusPaintCenterIndicator(Landroid/content/Context;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera2/compat/theme/custom/cv/CameraFocusPaintCenterIndicatorCV;

    invoke-direct {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/CameraFocusPaintCenterIndicatorCV;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getFocusViewOuterRectcolor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0600a5

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public setCenterFlag(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    return-void
.end method

.method public setFocusViewToastVisible(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    move v2, p0

    const v3, 0x7f120838

    const-wide/16 v4, 0xbb8

    const-string v1, "focus_view_desc"

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertFocusViewDescTip(Ljava/lang/String;IIJ)V

    :cond_1
    return-void
.end method

.method public setIndicatorBitmapSun(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorBitmapSun(Landroid/graphics/Bitmap;)V

    return-void
.end method