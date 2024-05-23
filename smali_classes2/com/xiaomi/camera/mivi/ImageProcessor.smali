.class public Lcom/xiaomi/camera/mivi/ImageProcessor;
.super Lcom/xiaomi/camera/mivi/IProcessor;
.source "ImageProcessor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageProcessor"


# instance fields
.field public mFilterBlockVariable:Landroid/os/ConditionVariable;

.field public mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/IProcessor;-><init>()V

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageProcessor;->mFilterBlockVariable:Landroid/os/ConditionVariable;

    .line 3
    new-instance v0, Lcom/xiaomi/camera/core/FilterProcessor;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ImageProcessor;->mFilterBlockVariable:Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/core/FilterProcessor;-><init>(Landroid/os/ConditionVariable;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    return-void
.end method


# virtual methods
.method public process(Lcom/xiaomi/camera/mivi/bean/ResultImageData;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getPictureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getFrameNumber()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/camera/MIVICaptureManager;->getParallelTaskData(Ljava/lang/String;JZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ImageProcessor"

    if-nez v0, :cond_0

    const/4 p0, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getPictureName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getFrameNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "process:  no ParallelTaskData found in MIVICaptureManager, picture name is %s, frame number is %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v5, "process: E"

    .line 3
    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getImages()[Landroid/media/Image;

    move-result-object v5

    aget-object v5, v5, v2

    .line 5
    invoke-virtual {v5}, Landroid/media/Image;->getFormat()I

    move-result v6

    const/16 v7, 0x100

    if-ne v6, v7, :cond_1

    const-string p0, "process: X, bybass with format JPEG"

    .line 6
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v5}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2

    aput-object v0, v1, v4

    const-string v4, "process: image\'s timestamp is %d, parallelTaskData is %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->updatePictureSize(II)V

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getOutputSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->updateOutputSize(II)V

    .line 10
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-virtual {p0, v0, v5, v2}, Lcom/xiaomi/camera/core/FilterProcessor;->doFilterSync(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;I)Landroid/media/Image;

    const-string p0, "process: X"

    .line 11
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
