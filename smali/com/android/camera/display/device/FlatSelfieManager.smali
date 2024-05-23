.class public Lcom/android/camera/display/device/FlatSelfieManager;
.super Ljava/lang/Object;
.source "FlatSelfieManager.java"


# static fields
.field public static final ANIMATION_DURATION_5S:I = 0x1388

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_REVERSE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FlatSelfieManager"

.field public static sInstance:Lcom/android/camera/display/device/FlatSelfieManager;


# instance fields
.field public disposable:Lio/reactivex/disposables/Disposable;

.field public isDisplayCanceled:Z

.field public legacyPresentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Presentation;",
            ">;"
        }
    .end annotation
.end field

.field public mBokehStateIdle:Z

.field public mBokehStateReverse:Z

.field public mState:I

.field public onStopFromSwitch:Z

.field public presentationSelfie:Lcom/android/camera/protocol/protocols/PresentationSelfie;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->legacyPresentations:Ljava/util/List;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateIdle:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateReverse:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/PresentationSelfie;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PresentationSelfie;->cancelFlatSelfiePresentation()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/display/device/FlatSelfieManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->sInstance:Lcom/android/camera/display/device/FlatSelfieManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/display/device/FlatSelfieManager;

    invoke-direct {v0}, Lcom/android/camera/display/device/FlatSelfieManager;-><init>()V

    sput-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->sInstance:Lcom/android/camera/display/device/FlatSelfieManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->sInstance:Lcom/android/camera/display/device/FlatSelfieManager;

    return-object v0
.end method


# virtual methods
.method public cancelDisplayWhenStopped()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDisplayWhenStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDisplayCanceled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/display/device/FlatSelfieManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationSelfie;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO0OO;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    :cond_1
    return-void
.end method

.method public cancelFlatSelfiePresentation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->presentationSelfie:Lcom/android/camera/protocol/protocols/PresentationSelfie;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PresentationSelfie;->cancelFlatSelfiePresentation()V

    :cond_1
    return-void
.end method

.method public getBokehStateIdle()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateIdle:Z

    return p0
.end method

.method public getBokehStateReverse()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateReverse:Z

    return p0
.end method

.method public getLegacyPresentations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Presentation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->legacyPresentations:Ljava/util/List;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    return p0
.end method

.method public interruptSwitch()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interruptSwitch from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->presentationSelfie:Lcom/android/camera/protocol/protocols/PresentationSelfie;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/PresentationSelfie;->cancelFlatSelfiePresentation()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 7
    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    .line 8
    iput v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    .line 10
    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    .line 11
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    .line 13
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interruptSwitch to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetState()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->notifyFlatSelfieOnFolded()V

    .line 6
    :cond_0
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reverseState()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reverseState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->notifyFlatSelfieOnFolded()V

    .line 7
    :cond_0
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reverseState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBokehStateIdle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateIdle:Z

    return-void
.end method

.method public setBokehStateReverse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateReverse:Z

    return-void
.end method

.method public switchDisplay()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchDisplay from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO00o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setESPSDisplaywitch(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->cancel()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationSelfie;->impl2()Lcom/android/camera/protocol/protocols/PresentationSelfie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->presentationSelfie:Lcom/android/camera/protocol/protocols/PresentationSelfie;

    .line 7
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 9
    :cond_1
    iget v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    const-wide/16 v2, 0x1388

    const/4 v4, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x6

    .line 10
    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    .line 11
    iput-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO00o;

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    .line 14
    iput v4, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 15
    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-static {v2, v3, v0, v5}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOo/OooO00o/OooO0O0;

    .line 17
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    .line 18
    iput v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    .line 19
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->presentationSelfie:Lcom/android/camera/protocol/protocols/PresentationSelfie;

    if-eqz v0, :cond_3

    .line 21
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/PresentationSelfie;->showFlatSelfiePresentation()V

    .line 22
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    .line 23
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchDisplay to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public translate(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string/jumbo p0, "selfie"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "normal"

    :goto_0
    return-object p0
.end method
