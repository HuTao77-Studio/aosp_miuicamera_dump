.class public Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;
.super Lcom/android/camera/panorama/AttachRunnable;
.source "Panorama3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module$PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewAttach"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;
    }
.end annotation


# instance fields
.field public final mPostAttachRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

.field public final synthetic this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-direct {p0}, Lcom/android/camera/panorama/AttachRunnable;-><init>()V

    .line 2
    new-instance p1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;Lcom/android/camera/module/Panorama3Module$1;)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->mPostAttachRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V

    return-void
.end method

.method private checkAttachEnd([D)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$4400(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/panorama/PositionDetector;

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/camera/panorama/PositionDetector;->detect(DD)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAttachEnd detectResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    const-string/jumbo p0, "stop_capture_complete"

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$4500(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->setDetectResult(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object p1, p1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$4500(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private stopCapture(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000oo0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000oo0;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updatePreviewImage()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$3500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->updatePreviewImage(Landroid/graphics/Bitmap;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePreviewImage error ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v1

    return-void

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mPreviewImage is null when updatePreviewImage"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v1

    return-void

    .line 8
    :cond_1
    iget-object v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 9
    iget-object v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 10
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0xb4

    const/4 v9, 0x6

    const/16 v10, 0x10e

    const/4 v11, 0x5

    const/4 v12, 0x0

    if-le v4, v5, :cond_2

    if-gt v2, v3, :cond_3

    :cond_2
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 11
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_6

    if-ge v2, v3, :cond_6

    .line 12
    :cond_3
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v11, :cond_4

    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 13
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v9, :cond_4

    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 14
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v7, :cond_4

    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 15
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-ne v4, v6, :cond_5

    :cond_4
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 16
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-ne v4, v10, :cond_5

    goto :goto_0

    :cond_5
    move v8, v12

    goto :goto_0

    .line 17
    :cond_6
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v11, :cond_7

    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 18
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v9, :cond_7

    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 19
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v7, :cond_7

    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 20
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-ne v4, v6, :cond_8

    :cond_7
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 21
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-ne v4, v8, :cond_8

    move v8, v10

    goto :goto_0

    :cond_8
    const/16 v8, 0x5a

    .line 22
    :goto_0
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v8, :cond_9

    .line 23
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v5, v8

    .line 24
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 25
    iget-object v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 26
    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    iget-object v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$3600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object/from16 v18, v4

    .line 27
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 28
    :cond_9
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v12, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    if-le v2, v3, :cond_a

    .line 29
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 30
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v6

    div-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v3, v2, v7

    .line 31
    div-int/lit8 v3, v3, 0x2

    .line 32
    new-instance v7, Landroid/graphics/Rect;

    add-int/2addr v2, v3

    invoke-direct {v7, v12, v3, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 33
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v6

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 34
    new-instance v7, Landroid/graphics/Rect;

    add-int/2addr v2, v12

    invoke-direct {v7, v12, v12, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    :goto_1
    iget-object v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$4000(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v2, v4, v7, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreviewImage src "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0, p1}, Lcom/android/camera/module/Panorama3Module;->access$1600(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach.run start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v14, v0, [D

    const/4 v15, 0x1

    new-array v13, v15, [I

    .line 2
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$2000(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/panorama/CaptureImage;

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$2100()Lcom/android/camera/panorama/CaptureImage;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_6

    .line 3
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/camera/panorama/AttachRunnable;->setImage(Lcom/android/camera/panorama/CaptureImage;)V

    const/16 v16, 0x0

    .line 4
    sget-object v17, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$400(Lcom/android/camera/module/Panorama3Module;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 8
    :cond_0
    :try_start_4
    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v3

    if-nez v3, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (engine finished)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    .line 12
    :cond_1
    :try_start_6
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreviewAttach attach start"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3, v2}, Lcom/android/camera/module/Panorama3Module;->access$2200(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V

    .line 14
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera/panorama/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/16 v18, 0x0

    aget-object v3, v3, v18

    iget-object v4, v1, Lcom/android/camera/panorama/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v15

    iget-object v5, v1, Lcom/android/camera/panorama/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v0

    iget-object v6, v1, Lcom/android/camera/panorama/AttachRunnable;->rowStride:[I

    aget v6, v6, v18

    iget-object v7, v1, Lcom/android/camera/panorama/AttachRunnable;->rowStride:[I

    aget v7, v7, v15

    iget-object v8, v1, Lcom/android/camera/panorama/AttachRunnable;->rowStride:[I

    aget v8, v8, v0

    iget-object v9, v1, Lcom/android/camera/panorama/AttachRunnable;->pixelStride:[I

    aget v9, v9, v18

    iget-object v10, v1, Lcom/android/camera/panorama/AttachRunnable;->pixelStride:[I

    aget v10, v10, v15

    iget-object v11, v1, Lcom/android/camera/panorama/AttachRunnable;->pixelStride:[I

    aget v11, v11, v0

    move-object v12, v14

    move-object/from16 v19, v13

    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D[I)I

    .line 15
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewAttach status=0x%08X"

    new-array v4, v15, [Ljava/lang/Object;

    aget v5, v19, v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v18

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 16
    new-instance v2, LOooO0O0/OooO0O0/OooO0OO/OooO00o;

    aget v3, v19, v18

    invoke-direct {v2, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;-><init>(I)V

    new-array v3, v0, [I

    const/16 v4, 0x800

    aput v4, v3, v18

    const/16 v4, 0x1000

    aput v4, v3, v15

    .line 17
    invoke-virtual {v2, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO0OO([I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v16, "stop_capture_out_of_range"

    goto :goto_1

    :cond_2
    const/16 v3, 0x400

    .line 18
    invoke-virtual {v2, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v16, "stop_capture_reverse"

    :cond_3
    :goto_1
    move-object/from16 v2, v16

    if-eqz v2, :cond_4

    .line 19
    invoke-direct {v1, v2}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->stopCapture(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (error attach status)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 22
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    .line 23
    :cond_4
    :try_start_8
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewAttach attach end"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2, v15}, Lcom/android/camera/module/Panorama3Module;->access$4302(Lcom/android/camera/module/Panorama3Module;Z)Z

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->updatePreviewImage()V

    .line 26
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCenter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v14, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v14, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 28
    :try_start_9
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->mPostAttachRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    invoke-direct {v1, v14}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->checkAttachEnd([D)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 30
    invoke-direct {v1, v2}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->stopCapture(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (attach completed)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 32
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v13, v19

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 33
    :try_start_b
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    .line 34
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V

    throw v0

    :cond_6
    :goto_2
    const-string/jumbo v0, "stop_capture_thermal"

    .line 35
    invoke-direct {v1, v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->stopCapture(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (request stop)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 37
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewAttach interrupted"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "stop_capture_un_expect"

    .line 38
    invoke-direct {v1, v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->stopCapture(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewAttach exit. (unexpected)"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
