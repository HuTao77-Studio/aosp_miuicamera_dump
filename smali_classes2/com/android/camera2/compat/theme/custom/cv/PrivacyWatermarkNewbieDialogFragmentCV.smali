.class public Lcom/android/camera2/compat/theme/custom/cv/PrivacyWatermarkNewbieDialogFragmentCV;
.super Lcom/android/camera/fragment/dialog/PrivacyWatermarkNewbieDialogFragment;
.source "PrivacyWatermarkNewbieDialogFragmentCV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/PrivacyWatermarkNewbieDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/AiSceneNewbieDialogFragment;->onBackEvent(I)Z

    return-void
.end method

.method public getBgColor()I
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0xa6

    .line 1
    invoke-static {v0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d0088

    .line 1
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/android/camera/Util;->isInNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0d0089

    .line 4
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    const p1, 0x7f0a00a9

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0o;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0o;-><init>(Lcom/android/camera2/compat/theme/custom/cv/PrivacyWatermarkNewbieDialogFragmentCV;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
