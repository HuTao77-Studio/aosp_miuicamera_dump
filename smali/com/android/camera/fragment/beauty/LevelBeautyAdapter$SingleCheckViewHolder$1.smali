.class public Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$1;
.super Ljava/lang/Object;
.source "LevelBeautyAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;->colorAnimate(Lcom/android/camera/ui/ColorImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

.field public final synthetic val$v:Lcom/android/camera/ui/ColorImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;Lcom/android/camera/ui/ColorImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$1;->this$1:Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$1;->val$v:Lcom/android/camera/ui/ColorImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder$1;->val$v:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    return-void
.end method