.class public Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;
.super Ljava/lang/Object;
.source "MiThemeOperationTopCV.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;->showJsonAnimation(Landroid/view/View;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

.field public final synthetic val$imageView:Lcom/android/camera/ui/ColorImageView;

.field public final synthetic val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;


# direct methods
.method public constructor <init>(Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->this$0:Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV;

    iput-object p2, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewImageResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewBackgroundResourceId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewImageResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$topItemResource:Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewBackgroundResourceId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopCV$1;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method
