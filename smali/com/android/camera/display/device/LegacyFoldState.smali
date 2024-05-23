.class public Lcom/android/camera/display/device/LegacyFoldState;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "LegacyFoldState.java"

# interfaces
.implements Lcom/android/camera/display/device/IFoldState;


# static fields
.field public static final MIUI_MULTI_DMS_NAME:Ljava/lang/String; = "miui_multi_display"

.field public static SUB_SCREEN_DISPLAY_NUM:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field public mOnFoldedListenerWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/display/device/IFoldState$OnFoldedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/display/device/LegacyFoldState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput v0, Lcom/android/camera/display/device/LegacyFoldState;->SUB_SCREEN_DISPLAY_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayFoldState()I
    .locals 1

    const-string p0, "miui_multi_display"

    .line 1
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-interface {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->getCurrentFoldState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string v0, "getCurrentFoldState fail!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "multi display manager service no found! "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/display/device/LegacyFoldState;->mOnFoldedListenerWR:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->warning(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayFoldChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/LegacyFoldState;->mOnFoldedListenerWR:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/display/device/IFoldState$OnFoldedListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p2}, Lcom/android/camera/display/device/IFoldState$OnFoldedListener;->onFolded(Z)V

    :cond_0
    return-void
.end method

.method public reverseDisplayStateWhileUnFold(Z)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E: reverseDisplayStateWhileUnFold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "miui_multi_display"

    .line 2
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 4
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->reverseDisplayStateWhileUnFold(ZI)Z

    .line 5
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "X: reverseDisplayStateWhileUnFold Success!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reverseDisplayStateWhileUnFold fail!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "multi display manager service no found! "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public switchDisplayForFlatSelfie(I)V
    .locals 0

    return-void
.end method

.method public switchPresentationDisplay(Z)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E: switchPresentationDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "miui_multi_display"

    .line 2
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object p0

    .line 4
    :try_start_0
    sget v0, Lcom/android/camera/display/device/LegacyFoldState;->SUB_SCREEN_DISPLAY_NUM:I

    invoke-interface {p0, v0, p1}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->setDisplayStateIgnoreFold(IZ)Z

    .line 5
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "X: SubDisplay, sub display sucess!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string p1, "display manager service connect fail!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "multi display manager service no found! "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/android/camera/display/device/LegacyFoldState;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->warning(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
