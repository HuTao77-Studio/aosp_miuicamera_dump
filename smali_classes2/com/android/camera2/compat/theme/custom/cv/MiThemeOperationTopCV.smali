.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;
.super Ljava/lang/Object;
.source "MiThemeOperationTopCV.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalTagValue()Ljava/lang/String;
    .locals 0

    const-string p0, " "

    return-object p0
.end method

.method public getAiArrays()I
    .locals 0

    const p0, 0x7f030001

    return p0
.end method

.method public getAiArraysShadow()I
    .locals 0

    const p0, 0x7f030002

    return p0
.end method

.method public getAiDetectAnim()I
    .locals 0

    const p0, 0x7f110082

    return p0
.end method

.method public getAlphaDuaration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getCinematicAnim()I
    .locals 0

    const p0, 0x7f110083

    return p0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getFlashAutoAnim()I
    .locals 0

    const p0, 0x7f110084

    return p0
.end method

.method public getFlashHaloOnAnim()I
    .locals 0

    const p0, 0x7f110085

    return p0
.end method

.method public getFlashOffAnim()I
    .locals 0

    const p0, 0x7f110086

    return p0
.end method

.method public getFlashOnAnim()I
    .locals 0

    const p0, 0x7f110087

    return p0
.end method

.method public getFlashTorchAnim()I
    .locals 0

    const p0, 0x7f110088

    return p0
.end method

.method public getHdrHaloOffAnim()I
    .locals 0

    const p0, 0x7f11008a

    return p0
.end method

.method public getHdrHaloOnAnim()I
    .locals 0

    const p0, 0x7f11008c

    return p0
.end method

.method public getHdrOffAnim()I
    .locals 0

    const p0, 0x7f110089

    return p0
.end method

.method public getHdrOnAnim()I
    .locals 0

    const p0, 0x7f11008b

    return p0
.end method

.method public getHdrVideoOnAnim()I
    .locals 0

    const p0, 0x7f11008d

    return p0
.end method

.method public getMacroAnim()I
    .locals 0

    const p0, 0x7f11008e

    return p0
.end method

.method public getModeTintColor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMotionPhotoAnim()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f110090

    goto :goto_0

    :cond_0
    const p0, 0x7f11008f

    :goto_0
    return p0
.end method

.method public getPanoramaTintColor()I
    .locals 0

    const p0, -0x33000001    # -1.3421772E8f

    return p0
.end method

.method public getPortraitAnim()I
    .locals 0

    const p0, 0x7f110091

    return p0
.end method

.method public getProVideoRecordingSimpleAnim()I
    .locals 0

    const p0, 0x7f11006a

    return p0
.end method

.method public getShineAnim()I
    .locals 0

    const p0, 0x7f110092

    return p0
.end method

.method public getTagExpandInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    .line 1
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0
.end method

.method public getTagHideInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    .line 1
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0
.end method

.method public getTopConfigBgRes(I)I
    .locals 0

    const-string p0, "_cv_bg"

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTopConfigBgRes(Landroid/content/Context;I)I
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

.method public getTopConfigColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603bc

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTopConfigRes(I)I
    .locals 0

    const-string p0, "_cv"

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTopConfigRes(Landroid/content/Context;I)I
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

.method public getTopConfigTint(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchTopConfigTint(Landroid/view/View;)V

    return-void
.end method

.method public getTopInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    .line 1
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0
.end method

.method public getTopMargin(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0708b7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getTopTintColor()I
    .locals 0

    const p0, -0xdfe0

    return p0
.end method

.method public getUseGuideBackMarginEnd(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0701ba

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getVibrator(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooOO0o()V

    return-void
.end method

.method public getVideoTagExpandDuration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getVideoTagPointFValue(Landroid/graphics/PointF;)F
    .locals 0

    .line 1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    return p0
.end method

.method public getVideoTagSize(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07092b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public isUseParameterDescriptionTip()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setTopColorAnimator(Landroid/view/View;JII)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-virtual {p1, p5}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    return-void
.end method

.method public setVideoTagCountLayout(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    const/16 p0, 0x64

    if-ge p4, p0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070931

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p3, p0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070932

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p3, p0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    return-void
.end method

.method public setVideoTagLayout(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07092b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070923

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 7
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070930

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 p1, 0x0

    invoke-virtual {p4, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public showJsonAnimation(Landroid/view/View;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;I)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;->updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object v0

    .line 3
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated()Z

    const/16 v1, 0xab

    if-ne p3, v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated()Z

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result p3

    const/16 v1, 0xc1

    if-eq p3, v1, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result p2

    const/16 p3, 0xc2

    if-ne p2, p3, :cond_4

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getTopSelectedAnimID()I

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getTopSelectedAnimID()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const p2, 0x7f07048d

    const p3, 0x3ec28f5c    # 0.38f

    .line 9
    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 11
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 12
    new-instance p2, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;-><init>(Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewImageResourceId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewBackgroundResourceId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    :cond_4
    :goto_0
    return-void
.end method
