.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mode/doc/DocModule;

.field private final synthetic OooO0O0:Lcom/android/camera2/QuickViewParam;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/doc/DocModule;Lcom/android/camera2/QuickViewParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/features/mode/doc/DocModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:Lcom/android/camera2/QuickViewParam;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/features/mode/doc/DocModule;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:Lcom/android/camera2/QuickViewParam;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mode/doc/DocModule;->OooO0Oo(Lcom/android/camera2/QuickViewParam;)V

    return-void
.end method
