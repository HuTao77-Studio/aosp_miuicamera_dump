.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00o/Oooo00O/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00o/Oooo00O/OooO00o;->OooO00o:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00o/Oooo00O/OooO00o;->OooO00o:Landroid/animation/ValueAnimator;

    check-cast p1, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;

    invoke-static {p0, p1}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$1;->OooO00o(Landroid/animation/ValueAnimator;Lcom/android/camera/protocol/protocols/FaceAnimatorListener;)V

    return-void
.end method
