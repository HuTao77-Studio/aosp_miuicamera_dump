.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mode/doc/DocModule;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/doc/DocModule;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0Oo;->OooO00o:Lcom/android/camera/features/mode/doc/DocModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0Oo;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0Oo;->OooO0OO:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0Oo;->OooO00o:Lcom/android/camera/features/mode/doc/DocModule;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0Oo;->OooO0O0:Ljava/lang/String;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0OO/OooO0Oo;->OooO0OO:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mode/doc/DocModule;->OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method