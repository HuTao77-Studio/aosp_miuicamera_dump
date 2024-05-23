.class public Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;
.super Lcom/android/camera/fragment/mode/ModeViewHolder;
.source "ModeViewHolderCV.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ModeViewHolderCV"


# instance fields
.field public mDownloadIconSize:I

.field public mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public mGap:I

.field public mMaxWidth:I

.field public mPaddingHor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a02e0

    const v1, 0x7f0a02dc

    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 8
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v0, v0, 0x50

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0800fd

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120585

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070257

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mGap:I

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070259

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mMaxWidth:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadIconSize:I

    .line 16
    iget p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mGap:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mPaddingHor:I

    :goto_0
    return-void
.end method

.method private initDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110054

    invoke-static {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Landroid/content/Context;I)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iget v1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadIconSize:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    .line 7
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAnimView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public needDownload(ZZ)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->initDrawable()V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o()V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(F)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p1, p2, p2, v1, p2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mGap:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mPaddingHor:I

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinEms(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinEms(I)V

    :goto_0
    return-void
.end method

.method public setNameDownloading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setNameWaiting()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f12038f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setProgress(IZ)V
    .locals 2

    const/16 p2, 0x64

    if-ge p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMinEms(I)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const-string v0, "tnum"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo00()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;->mDownloadingIcon:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoO0()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
