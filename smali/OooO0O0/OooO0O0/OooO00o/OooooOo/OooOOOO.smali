.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOOO;->OooO00o:I

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOOO;->OooO0O0:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOOO;->OooO00o:I

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOOO;->OooO0O0:Landroid/view/KeyEvent;

    check-cast p1, Lcom/android/camera/protocol/protocols/MiKeyEvent;

    invoke-static {v0, p0, p1}, Lcom/android/camera/module/BaseModule;->OooO00o(ILandroid/view/KeyEvent;Lcom/android/camera/protocol/protocols/MiKeyEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
