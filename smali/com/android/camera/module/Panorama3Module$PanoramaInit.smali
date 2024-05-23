.class public Lcom/android/camera/module/Panorama3Module$PanoramaInit;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Lcom/android/camera/module/Panorama3Module$PanoramaState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoramaInit"
.end annotation


# instance fields
.field public final aspectRatio:D

.field public final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 5
    iput-wide v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->aspectRatio:D

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 6
    iput-wide v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->aspectRatio:D

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    const-string/jumbo v0, "stop_capture_un_expect"

    invoke-static {p0, v0}, Lcom/android/camera/module/Panorama3Module;->access$1600(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getImageFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/Panorama3Module;->access$902(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    .line 3
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanoramaInit onSaveImage start, ImageFormat :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-wide v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->aspectRatio:D

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$1000(Lcom/android/camera/module/Panorama3Module;D)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setInputImageFormat(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PanoramaInit setInputImageFormat error resultCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Panorama3Module;->setNullDirectionFunction()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$1300(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->start(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PanoramaInit start error resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit p1

    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v1, Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/Panorama3Module$DecideDirection;-><init>(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/module/Panorama3Module$1;)V

    invoke-static {v0, v1}, Lcom/android/camera/module/Panorama3Module;->access$502(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/module/Panorama3Module$PanoramaState;)Lcom/android/camera/module/Panorama3Module$PanoramaState;

    .line 14
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanoramaInit end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v2}, Lcom/android/camera/module/Panorama3Module;->access$1102(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/MorphoPanoramaGP3;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000oOo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000oOo;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaInit;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanoramaInit failed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
