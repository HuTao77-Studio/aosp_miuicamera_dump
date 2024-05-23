.class public Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2MIVIPortraitStill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2MIVIPortraitStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2MIVIPortraitStill;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: mPictureName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", timestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const-string v0, "MiCamera2MIVIPortraitStill"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iput-object p3, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed: reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPictureName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", timestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string p3, "MiCamera2MIVIPortraitStill"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->tryCallbackCaptureFailed()V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p1, Lcom/android/camera2/QuickViewParam;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 5
    invoke-interface {p0, p1, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v3, p5

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: mPictureName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p3

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", frameNumber\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureFinishCallbackState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiCamera2MIVIPortraitStill"

    const/4 v5, 0x3

    invoke-static {v5, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v13, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    new-instance v14, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v6

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v9

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v10, v5, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 6
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v11

    move-object v5, v14

    move-wide/from16 v7, p3

    invoke-direct/range {v5 .. v12}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    iput-object v14, v13, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 7
    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v6, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v6, v6, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    .line 8
    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    sget v6, Lcom/android/camera2/MiCamera2MIVIBaseShot;->CAPTURE_STARTED:I

    invoke-virtual {v5, v6}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->changeCallbackState(I)V

    .line 9
    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->tryHandleCaptureFinished()V

    .line 10
    new-instance v5, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v6, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v6, v6, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 11
    new-instance v6, Lcom/android/camera2/QuickViewParam;

    iget-object v7, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    .line 12
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v7, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v12, v7, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {v5, v6}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget v6, v6, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 13
    invoke-virtual {v5, v6}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v5

    .line 15
    iget-object v6, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v6, v6, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-interface {v1, v6, v5}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 16
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setFrameNumber(J)V

    .line 17
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 18
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v1, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 19
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setParallelVTCameraSnapshot(Z)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureStarted: parallelTaskData: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    iget-object v6, v5, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    move-wide/from16 v3, p5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/camera/MIVICaptureManager;->addAll(IJLjava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 22
    iget-object v0, v0, Lcom/android/camera2/MiCamera2MIVIPortraitStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->handleEarlyImageIfNeed()V

    :cond_0
    return-void
.end method
