.class public Lcom/android/camera/display/device/FoldStateAdapter;
.super Ljava/lang/Object;
.source "FoldStateAdapter.java"

# interfaces
.implements Lcom/android/camera/display/device/IFoldState;


# static fields
.field public static sInstance:Lcom/android/camera/display/device/FoldStateAdapter;


# instance fields
.field public mFoldState:Lcom/android/camera/display/device/IFoldState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/display/device/FoldState;

    invoke-direct {v0}, Lcom/android/camera/display/device/FoldState;-><init>()V

    iput-object v0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/display/device/LegacyFoldState;

    invoke-direct {v0}, Lcom/android/camera/display/device/LegacyFoldState;-><init>()V

    iput-object v0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/camera/display/device/FoldStateAdapter;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/display/device/FoldStateAdapter;->sInstance:Lcom/android/camera/display/device/FoldStateAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/display/device/FoldStateAdapter;

    invoke-direct {v0}, Lcom/android/camera/display/device/FoldStateAdapter;-><init>()V

    sput-object v0, Lcom/android/camera/display/device/FoldStateAdapter;->sInstance:Lcom/android/camera/display/device/FoldStateAdapter;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/display/device/FoldStateAdapter;->sInstance:Lcom/android/camera/display/device/FoldStateAdapter;

    return-object v0
.end method


# virtual methods
.method public getDisplayFoldState()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    invoke-interface {v0}, Lcom/android/camera/display/device/IFoldState;->getDisplayFoldState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/display/device/IFoldState;->TAG:Ljava/lang/String;

    const-string v2, "getDisplayFoldState form device posture."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-interface {p0}, Lcom/android/camera/display/device/IFoldState;->getDevicePosture()I

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/display/device/IFoldState;->init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V

    return-void
.end method

.method public reverseDisplayStateWhileUnFold(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    invoke-interface {p0, p1}, Lcom/android/camera/display/device/IFoldState;->reverseDisplayStateWhileUnFold(Z)V

    return-void
.end method

.method public switchDisplayForFlatSelfie(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    invoke-interface {p0, p1}, Lcom/android/camera/display/device/IFoldState;->switchDisplayForFlatSelfie(I)V

    return-void
.end method

.method public switchPresentationDisplay(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    invoke-interface {p0, p1}, Lcom/android/camera/display/device/IFoldState;->switchPresentationDisplay(Z)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/device/FoldStateAdapter;->mFoldState:Lcom/android/camera/display/device/IFoldState;

    invoke-interface {p0}, Lcom/android/camera/display/device/IFoldState;->unInit()V

    return-void
.end method
