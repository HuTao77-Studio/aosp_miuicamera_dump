.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/storage/ImageSaveRequest;

.field private final synthetic OooO0O0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/storage/ImageSaveRequest;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0O0;->OooO00o:Lcom/android/camera/storage/ImageSaveRequest;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0O0;->OooO0O0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0O0;->OooO00o:Lcom/android/camera/storage/ImageSaveRequest;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0O0;->OooO0O0:Landroid/net/Uri;

    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/storage/ImageSaveRequest;->OooO00o(Landroid/net/Uri;Lcom/android/camera/Thumbnail;)V

    return-void
.end method