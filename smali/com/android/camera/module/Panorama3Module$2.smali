.class public Lcom/android/camera/module/Panorama3Module$2;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Panorama3Module;->startPanoramaShooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mImageConsumed:Z

.field public final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module$2;->mImageConsumed:Z

    return-void
.end method


# virtual methods
.method public onPictureTakenFinished(ZJI)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onPictureBurstFinished success = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x4

    invoke-static {p3, p2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/module/Panorama3Module;->access$602(Lcom/android/camera/module/Panorama3Module;Z)Z

    return-void
.end method

.method public onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPictureTaken>>image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/module/Panorama3Module$2;->mImageConsumed:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p2}, Lcom/android/camera/module/Panorama3Module;->access$300(Lcom/android/camera/module/Panorama3Module;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p2}, Lcom/android/camera/module/Panorama3Module;->access$400(Lcom/android/camera/module/Panorama3Module;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p2}, Lcom/android/camera/module/Panorama3Module;->access$500(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/module/Panorama3Module$PanoramaState;

    move-result-object p2

    new-instance v0, Lcom/android/camera/panorama/Camera2Image;

    invoke-direct {v0, p1}, Lcom/android/camera/panorama/Camera2Image;-><init>(Landroid/media/Image;)V

    invoke-interface {p2, v0}, Lcom/android/camera/module/Panorama3Module$PanoramaState;->onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module$2;->mImageConsumed:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onPictureTakenImageConsumed: shooting stop"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module$2;->mImageConsumed:Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
