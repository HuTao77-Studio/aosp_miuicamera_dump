.class public Lcom/android/camera/ui/MotionDetectionView$13;
.super Ljava/lang/Object;
.source "MotionDetectionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/MotionDetectionView;->doCircleAnimatorUp(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/MotionDetectionView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/MotionDetectionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView$13;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView$13;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/ui/MotionDetectionView;->access$1102(Lcom/android/camera/ui/MotionDetectionView;F)F

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView$13;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    iget v0, p1, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    invoke-static {p1}, Lcom/android/camera/ui/MotionDetectionView;->access$1100(Lcom/android/camera/ui/MotionDetectionView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/MotionDetectionView$13;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    iget v3, v2, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    iget v2, v2, Lcom/android/camera/ui/MotionDetectionView;->mRadiusNormalSize:F

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/camera/ui/MotionDetectionView;->access$1202(Lcom/android/camera/ui/MotionDetectionView;F)F

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView$13;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-static {p1}, Lcom/android/camera/ui/MotionDetectionView;->access$1200(Lcom/android/camera/ui/MotionDetectionView;)F

    move-result v0

    iput v0, p1, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView$13;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-static {p0}, Lcom/android/camera/ui/MotionDetectionView;->access$400(Lcom/android/camera/ui/MotionDetectionView;)V

    return-void
.end method
