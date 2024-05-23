.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

.field private final synthetic OooO0O0:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0oo;->OooO00o:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0oo;->OooO0O0:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0oo;->OooO00o:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO0oo;->OooO0O0:Landroid/animation/ValueAnimator;

    invoke-static {v0, p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTabCV;->OooO00o(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
