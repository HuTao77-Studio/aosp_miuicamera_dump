.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Landroid/view/View;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO;->OooO00o:Landroid/view/View;

    iput p2, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO;->OooO0O0:I

    iput p3, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO;->OooO00o:Landroid/view/View;

    iget v1, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO;->OooO0O0:I

    iget p0, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooO;->OooO0OO:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopMenuCV;->OooO00o(Landroid/view/View;IILandroid/animation/ValueAnimator;)V

    return-void
.end method