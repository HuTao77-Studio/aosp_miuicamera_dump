.class public Lcom/android/camera2/compat/theme/custom/tt/MiThemeCompatTT;
.super Ljava/lang/Object;
.source "MiThemeCompatTT.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeInterface;


# instance fields
.field public miThemeOperatioBottomTT:Lcom/android/camera2/compat/theme/custom/tt/MiThemeOperatioBottomTT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/PreferenceScreen;IZZ)V
    .locals 0

    return-void
.end method

.method public create(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getDeviceWatermark(Ljava/lang/String;FZ)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFragmentOverlay()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/tt/MiThemeCompatTT;->miThemeOperatioBottomTT:Lcom/android/camera2/compat/theme/custom/tt/MiThemeOperatioBottomTT;

    return-object p0
.end method

.method public getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationFocus()Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationVendorTag()Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTagIf;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverlayResByDefaultSuffix(I)I
    .locals 0

    return p1
.end method

.method public getOverlayResBySuffix(ILjava/lang/String;)I
    .locals 0

    return p1
.end method

.method public getShutterSoundIf()Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundIf;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTestStringID()I
    .locals 0

    const p0, 0x7f1209a7

    return p0
.end method

.method public getTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    return-object p2
.end method

.method public getVideoResource()Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidgetCamera()Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public processPreviewWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    return-void
.end method

.method public processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    return-void
.end method

.method public setTheme(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
