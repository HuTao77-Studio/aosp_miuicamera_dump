.class public Lcom/android/camera2/compat/theme/custom/cv/tab/FragmentModeSelectorCV;
.super Lcom/android/camera/fragment/modeselector/FragmentModeSelector;
.source "FragmentModeSelectorCV.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mRedDot:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/tab/FragmentModeSelectorCV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/compat/theme/custom/cv/tab/FragmentModeSelectorCV;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMoreModeStyle(I)V
    .locals 0

    return-void
.end method

.method public canSwipeChangeMode()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Lcom/android/camera/AppController;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOo/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOo/OooO0o0;

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    sget-object v0, Lcom/android/camera2/compat/theme/custom/cv/tab/FragmentModeSelectorCV;->TAG:Ljava/lang/String;

    const-string v1, "canSwipeChangeMode caz camera state stop."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-super {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->canSwipeChangeMode()Z

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->canSwipeChangeMode()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getExternalModeIconAnim()Lio/reactivex/Completable;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/animation/type/RotateOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipIcon:Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/RotateOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, -0x5a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/animation/type/RotateOnSubscribe;->setRotateDegree(II)Lcom/android/camera/animation/type/RotateOnSubscribe;

    move-result-object p0

    new-instance v0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0x1f4

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00ca

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a03d7

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/tab/FragmentModeSelectorCV;->mRedDot:Landroid/view/View;

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->initView(Landroid/view/View;)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->notifyDataChanged(II)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public onDragProgress(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/android/camera2/compat/theme/custom/cv/more/DragAnimationConfigCV;->onDragProgress(Landroid/view/View;IZZ)V

    :cond_0
    return-void
.end method

.method public onDragStart(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/camera2/compat/theme/custom/cv/more/DragAnimationConfigCV;->onDragStart(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method public reInitViewBackground()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipRoot:Landroid/widget/FrameLayout;

    const v2, 0x7f0800d3

    const v3, 0x7f06002f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public traceEnterMoreMode()V
    .locals 0

    const-string p0, "value_enter_more_mode_by_tab"

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackEnterMoreMode(Ljava/lang/String;)V

    return-void
.end method
