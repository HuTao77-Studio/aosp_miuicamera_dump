.class public Lcom/android/camera2/MiCamera2$4;
.super Ljava/lang/Object;
.source "MiCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/MiCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2$4;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2$4;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$600(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onImageAvailable: NO portrait image processor!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2$4;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2;->access$600(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/MiCamera2Shot;->onImageReceived(Landroid/media/Image;I)V

    return-void
.end method