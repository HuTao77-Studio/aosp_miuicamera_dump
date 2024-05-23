.class public Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "SlowMotionDetectionASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/video/SlowMotionModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SlowMotionDetectionASD"


# instance fields
.field public mMotionDetectionResult:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/video/SlowMotionModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/video/SlowMotionModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/video/SlowMotionModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/video/SlowMotionModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/video/SlowMotionModule;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/video/SlowMotionModule;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;->mMotionDetectionResult:Ljava/lang/Long;

    invoke-virtual {p1, p0}, Lcom/android/camera/module/video/SlowMotionModule;->consumeMotionResult(Ljava/lang/Long;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->XIAOMI_MOTION_DETECTION_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    return-void
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/video/SlowMotionModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/video/SlowMotionModule;)Z

    move-result p0

    return p0
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/video/SlowMotionModule;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSampleTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScope()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/video/SlowMotionModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;->initAndGetPriorCondition(Lcom/android/camera/module/video/SlowMotionModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/video/SlowMotionModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps3840()Z

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/SlowMotionDetectionASD;->mMotionDetectionResult:Ljava/lang/Long;

    return-void
.end method
