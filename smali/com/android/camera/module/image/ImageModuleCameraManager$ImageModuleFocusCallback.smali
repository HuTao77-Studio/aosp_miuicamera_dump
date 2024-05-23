.class public Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;
.super Ljava/lang/Object;
.source "ImageModuleCameraManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/image/ImageModuleCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageModuleFocusCallback"
.end annotation


# instance fields
.field public mAFEndLogTimes:I

.field public final synthetic this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/ImageModuleCameraManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/MainContentProtocol;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    return-void
.end method


# virtual methods
.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "ImageModuleCameraManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onFocusStateChanged: first frame has not arrived"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-static {v0}, Lcom/android/camera/module/image/ImageModuleCameraManager;->access$000(Lcom/android/camera/module/image/ImageModuleCameraManager;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCameraState()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_e

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_7

    goto/16 :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "AutoFocusTime=%1$dms focused=%2$b"

    .line 9
    invoke-static {v0, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00o/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00o/OooO0o0;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v2}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusing()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/ImageModuleCameraManager;->mFirstCreateCapture:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_6

    :cond_5
    return-void

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-static {v0}, Lcom/android/camera/module/image/ImageModuleCameraManager;->access$200(Lcom/android/camera/module/image/ImageModuleCameraManager;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 13
    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 14
    iput v4, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->mAFEndLogTimes:I

    const-string/jumbo v2, "onAutoFocusMoving start"

    goto :goto_0

    .line 15
    :cond_8
    iget v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->mAFEndLogTimes:I

    if-nez v0, :cond_9

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoFocusMoving end. result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    iget v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->mAFEndLogTimes:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->mAFEndLogTimes:I

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    iget-boolean v5, v0, Lcom/android/camera/module/image/ImageModuleCameraManager;->mFirstCreateCapture:Z

    if-eqz v5, :cond_9

    .line 19
    iput-boolean v4, v0, Lcom/android/camera/module/image/ImageModuleCameraManager;->mFirstCreateCapture:Z

    .line 20
    :cond_9
    :goto_0
    sget-object v0, Lcom/android/camera/Util;->sIsDumpLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 21
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCameraState()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 23
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    if-ne v0, v3, :cond_b

    goto :goto_1

    .line 24
    :cond_b
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 25
    iget-object p0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_2

    .line 26
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setWithFlash(Z)V

    .line 29
    :cond_d
    iget-object p0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_2

    .line 30
    :cond_e
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "FocusTime=%1$dms focused=%2$b"

    .line 32
    invoke-static {v0, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    .line 34
    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_f

    .line 35
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0, v5}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setCameraState(I)V

    .line 36
    :cond_f
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-static {v0}, Lcom/android/camera/module/image/ImageModuleCameraManager;->access$100(Lcom/android/camera/module/image/ImageModuleCameraManager;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 38
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 39
    :cond_10
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->is3ALocked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isZoomRatioBetweenUltraAndWide()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusStateChanged: isUltraFocusAreaSupported = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 44
    iget-object p1, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera2/CameraConfigManager;->setFocusMode(I)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setFocusDistance(F)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p1, v5}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setUWAELocked(Z)V

    .line 47
    :cond_11
    iget-object p0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00o/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00o/OooO0Oo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 48
    :cond_12
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->is3ALocked()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 49
    iget-object p0, p0, Lcom/android/camera/module/image/ImageModuleCameraManager$ImageModuleFocusCallback;->this$0:Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->unlockAEAF()V

    :cond_13
    :goto_2
    return-void
.end method
