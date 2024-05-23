.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;
.super Ljava/lang/Object;
.source "MiThemeCompatCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeInterface;


# static fields
.field public static final CV_TAG:Ljava/lang/String; = "ParallelSaveRequest"

.field public static final EXIF_DATA_SIZE:I = 0x40000

.field public static final IS_DUMP_CV_DATA:Z

.field public static final RESOURCE_SUFFIX:Ljava/lang/String; = "_cv"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMiThemeOperationFragmentCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationFragmentCV;

.field public mMiThemeOperationModeSelectCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTabCV;

.field public miThemeOperationBottomCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationBottomCV;

.field public miThemeOperationCvLensCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationCvLensCV;

.field public miThemeOperationFilterCv:Lcom/android/camera2/compat/theme/custom/cv/filter/MiThemeOperationFilterCv;

.field public miThemeOperationFocusCV:Lcom/android/camera2/compat/theme/custom/cv/MithemeOperationFocusCV;

.field public miThemeOperationManualCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;

.field public miThemeOperationMimojiCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationMimojiCV;

.field public miThemeOperationPanelCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationPanelCV;

.field public miThemeOperationTipsCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTipsCV;

.field public miThemeOperationTopAlertCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopAlertCV;

.field public miThemeOperationTopCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

.field public miThemeOperationTopMenuCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopMenuCV;

.field public miThemeOperationVendorTagCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVendorTagCV;

.field public miThemeOperationVideoResourceCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVideoResourceCV;

.field public miThemeOperationZoomCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationZoomCV;

.field public miThemeShutterSoundCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeShutterSoundCV;

.field public miThemeWidgetCameraCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "dump.cv.watermark"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->IS_DUMP_CV_DATA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationFragmentCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationFragmentCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mMiThemeOperationFragmentCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationFragmentCV;

    .line 3
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationBottomCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationBottomCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationBottomCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationBottomCV;

    .line 4
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTabCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTabCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mMiThemeOperationModeSelectCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTabCV;

    .line 5
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTopCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

    .line 6
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopAlertCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopAlertCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTopAlertCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopAlertCV;

    .line 7
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationManualCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;

    .line 8
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTipsCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTipsCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTipsCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTipsCV;

    .line 9
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationZoomCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationZoomCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationZoomCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationZoomCV;

    .line 10
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationPanelCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationPanelCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationPanelCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationPanelCV;

    .line 11
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeWidgetCameraCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;

    .line 12
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MithemeOperationFocusCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MithemeOperationFocusCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationFocusCV:Lcom/android/camera2/compat/theme/custom/cv/MithemeOperationFocusCV;

    .line 13
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTopCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

    .line 14
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopMenuCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopMenuCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTopMenuCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopMenuCV;

    .line 15
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/filter/MiThemeOperationFilterCv;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/filter/MiThemeOperationFilterCv;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationFilterCv:Lcom/android/camera2/compat/theme/custom/cv/filter/MiThemeOperationFilterCv;

    .line 16
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVideoResourceCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVideoResourceCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationVideoResourceCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVideoResourceCV;

    .line 17
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeShutterSoundCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeShutterSoundCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeShutterSoundCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeShutterSoundCV;

    .line 18
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationMimojiCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationMimojiCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationMimojiCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationMimojiCV;

    .line 19
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVendorTagCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVendorTagCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationVendorTagCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVendorTagCV;

    .line 20
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationCvLensCV;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationCvLensCV;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationCvLensCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationCvLensCV;

    return-void
.end method

.method private dumpYuv(II[B)V
    .locals 6

    .line 3
    sget-boolean p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->IS_DUMP_CV_DATA:Z

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result p0

    const/4 p3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p0, p3, v0}, Lcom/android/camera/Util;->saveYuvToJpg([BII[ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dumpYuv(Landroid/graphics/YuvImage;)V
    .locals 5

    .line 1
    sget-boolean p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->IS_DUMP_CV_DATA:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/camera/Util;->saveYuvToJpg([BII[ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/PreferenceScreen;IZZ)V
    .locals 0

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    const/16 p0, 0xa3

    if-eq p2, p0, :cond_0

    const/16 p0, 0xa7

    if-ne p2, p0, :cond_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance p2, Landroidx/preference/PreferenceCategory;

    invoke-direct {p2, p0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 4
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 5
    new-instance p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p1, p0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string p3, "pref_cv_watermark_key"

    .line 6
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->getCvWatermarkTitleStringID()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->getCvWatermarkSummaryStringID()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p3, 0x0

    .line 9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 11
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 12
    new-instance p1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/PreferenceCv;

    invoke-direct {p1, p0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/PreferenceCv;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0d0197

    .line 13
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 14
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 15
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public create(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getDeviceWatermark(Ljava/lang/String;FZ)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvDeviceWaterMarkTexture;->newInstance(Ljava/lang/String;FZ)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvDeviceWaterMarkTexture;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentOverlay()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mMiThemeOperationFragmentCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationFragmentCV;

    return-object p0
.end method

.method public getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationBottomCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationBottomCV;

    return-object p0
.end method

.method public getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationCvLensCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationCvLensCV;

    return-object p0
.end method

.method public getOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationFilterCv:Lcom/android/camera2/compat/theme/custom/cv/filter/MiThemeOperationFilterCv;

    return-object p0
.end method

.method public getOperationFocus()Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationFocusCV:Lcom/android/camera2/compat/theme/custom/cv/MithemeOperationFocusCV;

    return-object p0
.end method

.method public getOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationManualCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationManualCV;

    return-object p0
.end method

.method public getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationMimojiCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationMimojiCV;

    return-object p0
.end method

.method public getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationPanelCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationPanelCV;

    return-object p0
.end method

.method public getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mMiThemeOperationModeSelectCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTabCV;

    return-object p0
.end method

.method public getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTipsCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTipsCV;

    return-object p0
.end method

.method public getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTopCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

    return-object p0
.end method

.method public getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTopAlertCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopAlertCV;

    return-object p0
.end method

.method public getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationTopMenuCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopMenuCV;

    return-object p0
.end method

.method public getOperationVendorTag()Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTagIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationVendorTagCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVendorTagCV;

    return-object p0
.end method

.method public getOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationZoomCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationZoomCV;

    return-object p0
.end method

.method public getOverlayResByDefaultSuffix(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_cv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method public getOverlayResBySuffix(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method public getShutterSoundIf()Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeShutterSoundCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeShutterSoundCV;

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

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeOperationVideoResourceCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationVideoResourceCV;

    return-object p0
.end method

.method public getWidgetCamera()Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->miThemeWidgetCameraCV:Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;

    return-object p0
.end method

.method public processPreviewWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->hasCvWaterMark()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCvOrientation()I

    move-result v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit16 v6, v6, 0xa8

    div-int/lit16 v6, v6, 0x438

    if-nez v0, :cond_1

    add-int/2addr v5, v6

    :goto_0
    move v0, v1

    move v6, v0

    goto :goto_1

    :cond_1
    const/16 v7, 0x5a

    if-ne v0, v7, :cond_2

    add-int/2addr v4, v6

    goto :goto_0

    :cond_2
    const/16 v7, 0xb4

    if-ne v0, v7, :cond_3

    add-int/2addr v5, v6

    move v0, v6

    move v6, v1

    goto :goto_1

    :cond_3
    add-int/2addr v4, v6

    move v0, v1

    .line 9
    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, -0x1

    .line 11
    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v6, v6

    int-to-float v0, v0

    const/4 v7, 0x0

    .line 12
    invoke-virtual {v5, p0, v6, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 13
    sget-object p0, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {p0, v1}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result p0

    invoke-static {v4, p0}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->refillJpegData([B)V

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processCvWatermark: preview cv cost="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewSaveRequest"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->hasCvWaterMark()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegQuality()I

    move-result v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getExposureTime()J

    move-result-wide v2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getIso()I

    move-result v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v13

    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-nez v5, :cond_1

    .line 6
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_1
    if-nez v4, :cond_2

    .line 7
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v13, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8
    :cond_2
    invoke-static {v13}, Lcom/android/camera2/CaptureResultParser;->getFocalLength35mm(Landroid/hardware/camera2/CaptureResult;)F

    move-result v5

    .line 9
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-short v5, v5

    .line 10
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v13, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 11
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v13, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 12
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v13, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v12

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v10

    .line 15
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v15

    .line 16
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processCvWatermark: width="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", height="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", exposureTime="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", iso="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", focalLength="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", focalLength35mm="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", orientation="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", aperture="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "ParallelSaveRequest"

    invoke-static {v11, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v7

    .line 19
    invoke-direct {v0, v15, v10, v7}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->dumpYuv(II[B)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v14

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v13

    const-string v13, "processCvWatermark: isSquare="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v13

    move/from16 v26, v1

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ne v13, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v1, v6, :cond_6

    if-eq v15, v10, :cond_6

    .line 24
    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v6

    mul-int v13, v1, v1

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v6, v13}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v6

    if-le v15, v1, :cond_4

    sub-int v13, v15, v1

    .line 26
    div-int/lit8 v13, v13, 0x2

    move/from16 v20, v13

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    :goto_1
    if-le v10, v1, :cond_5

    sub-int v13, v10, v1

    .line 27
    div-int/lit8 v13, v13, 0x2

    move/from16 v21, v13

    goto :goto_2

    :cond_5
    const/16 v21, 0x0

    :goto_2
    move-object v14, v7

    move/from16 v16, v10

    move-object/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v1

    move/from16 v22, v9

    .line 28
    invoke-static/range {v14 .. v22}, Lcom/xiaomi/libyuv/YuvUtils;->NV21Crop([BII[BIIIII)I

    move/from16 v20, v19

    goto :goto_5

    :cond_6
    const-string v1, "processCvWatermark: normal..."

    .line 29
    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    rem-int/lit16 v1, v9, 0xb4

    if-eqz v1, :cond_7

    move v6, v10

    goto :goto_3

    :cond_7
    move v6, v15

    :goto_3
    if-eqz v1, :cond_8

    move v1, v15

    goto :goto_4

    :cond_8
    move v1, v10

    .line 31
    :goto_4
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v13

    mul-int v14, v6, v1

    mul-int/lit8 v14, v14, 0x3

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v13

    .line 32
    invoke-static {v7, v15, v10, v13, v9}, Lcom/xiaomi/libyuv/YuvUtils;->NV21Rotate([BII[BI)I

    move/from16 v20, v1

    move/from16 v19, v6

    move-object v6, v13

    .line 33
    :goto_5
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    .line 34
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v18, 0x11

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    invoke-direct/range {v16 .. v21}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCvWatermark: rotate yuvPhoto cost="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v23

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "ms"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {v0, v1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->dumpYuv(Landroid/graphics/YuvImage;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 38
    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v14

    invoke-static {v7, v14}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getRatio(II)F

    move-result v7

    .line 39
    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v14

    invoke-static {v7, v14}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getSize(FI)Landroid/util/Size;

    move-result-object v15

    .line 40
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v14

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v17

    mul-int v16, v16, v17

    mul-int/lit8 v16, v16, 0x3

    move-object/from16 v27, v1

    div-int/lit8 v1, v16, 0x2

    invoke-virtual {v14, v1}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v1

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDateTakenTime()J

    move-result-wide v23

    move-object v14, v1

    move/from16 v16, v7

    move-wide/from16 v17, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v8

    move-object/from16 v22, v12

    .line 42
    invoke-static/range {v14 .. v24}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getYuvWatermark([BLandroid/util/Size;FJISFLandroid/location/Location;J)Landroid/graphics/YuvImage;

    move-result-object v7

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processCvWatermark: yuvWatermark="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", cost="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v9, v15, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {v0, v7}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->dumpYuv(Landroid/graphics/YuvImage;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 46
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v10

    array-length v15, v6

    move-wide/from16 v18, v2

    array-length v2, v1

    add-int/2addr v15, v2

    invoke-virtual {v10, v15}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v2

    move-object/from16 v3, v27

    .line 47
    invoke-static {v2, v3, v7}, Lcom/xiaomi/libyuv/YuvUtils;->verticalSplicing([BLandroid/graphics/YuvImage;Landroid/graphics/YuvImage;)Landroid/graphics/YuvImage;

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    .line 49
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCvWatermark: splice yuvPhoto with yuvWatermark cost="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {v0, v3}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeCompatCV;->dumpYuv(Landroid/graphics/YuvImage;)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v1, 0x0

    .line 53
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v10

    const/4 v15, 0x0

    invoke-direct {v0, v15, v15, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v9, v26

    :try_start_2
    invoke-virtual {v3, v0, v9, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 55
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    .line 56
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v9, v26

    :goto_6
    move-object v2, v0

    .line 58
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v10, v0

    .line 59
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v9, v26

    .line 60
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCvWatermark: yuv to jpeg error "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCvWatermark: YUV compressToJpeg quality="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v11, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 65
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v0, v1

    const/high16 v6, 0x40000

    add-int/2addr v0, v6

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 66
    :try_start_8
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 67
    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDateTakenTime()J

    move-result-wide v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const-wide/16 v16, 0x0

    const/4 v3, 0x0

    move-object v6, v11

    move-wide v10, v14

    move-object v14, v13

    move-object/from16 v13, v25

    move-object/from16 v28, v14

    move-wide/from16 v14, v16

    move-object/from16 v16, v0

    move/from16 v17, v3

    .line 69
    :try_start_9
    invoke-static/range {v7 .. v17}, Lcom/android/camera/ExifTool;->appendExifInfo(IIIJLandroid/location/Location;Landroid/hardware/camera2/CaptureResult;JLcom/android/gallery3d/exif/ExifInterface;Z)V

    move-wide/from16 v7, v18

    .line 70
    invoke-static {v0, v7, v8, v4, v5}, Lcom/android/camera/ExifTool;->appendExif(Lcom/android/gallery3d/exif/ExifInterface;JIS)V

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 73
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v6, v11

    move-object/from16 v28, v13

    :goto_a
    move-object v3, v0

    .line 74
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    move-object v4, v0

    .line 75
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v6, v11

    move-object/from16 v28, v13

    .line 76
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCvWatermark: write exif error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    move-object/from16 v2, p1

    .line 77
    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->refillJpegData([B)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCvWatermark: write exif cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTheme(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
