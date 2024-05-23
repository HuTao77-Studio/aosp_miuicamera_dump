.class public Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CapsuleLayoutCV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;


# direct methods
.method public constructor <init>(Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV$2;->this$0:Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV$2;->this$0:Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV$2;->this$0:Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;->access$502(Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV$2;->this$0:Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV$2;->this$0:Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;->access$402(Lcom/android/camera2/compat/theme/custom/cv/tab/CapsuleLayoutCV;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
