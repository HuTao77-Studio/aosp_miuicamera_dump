.class public Lcom/android/camera2/compat/theme/custom/cv/FragmentTimeFreezeProcessCV;
.super Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;
.source "FragmentTimeFreezeProcessCV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;-><init>()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/FragmentTimeFreezeProcessCV;->setLandscapeHint(Landroid/widget/TextView;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/compat/theme/custom/cv/FragmentTimeFreezeProcessCV;->setCaptureHint(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public onTimeFreezeStateChange(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const p1, 0x7f0803e3

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->updateSnapStatus(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const p1, 0x7f0803e2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->updateSnapStatus(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->skipDrawCenter(Z)V

    :goto_0
    return-void
.end method

.method public setCaptureHint(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070051

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const p0, 0x3cf5c28f    # 0.03f

    .line 3
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method

.method public setLandscapeHint(Landroid/widget/TextView;)V
    .locals 1

    const-string p0, "mipro-medium"

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 2
    invoke-static {p1, p0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    return-void
.end method
