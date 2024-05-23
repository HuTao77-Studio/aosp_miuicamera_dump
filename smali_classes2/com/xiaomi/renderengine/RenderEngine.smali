.class public Lcom/xiaomi/renderengine/RenderEngine;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;,
        Lcom/xiaomi/renderengine/RenderEngine$RenderParams;,
        Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;,
        Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;,
        Lcom/xiaomi/renderengine/RenderEngine$StateCallback;
    }
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRS:[I

.field public static final RENDERING_COUNT_INTERVAL:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "RenderEngine"

.field public static sFrameListener:Landroid/os/HandlerThread;


# instance fields
.field public volatile mAnimationType:I

.field public mAppContext:Landroid/content/Context;

.field public mBufferHeight:I

.field public mBufferWidth:I

.field public mCameraSurface:Landroid/view/Surface;

.field public mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

.field public mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEGLContext14:Landroid/opengl/EGLContext;

.field public mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

.field public mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

.field public volatile mFirstFrameArrived:Z

.field public volatile mFirstFrameDrawn:Z

.field public mFrameCount:I

.field public mFrameCountingStart:J

.field public final mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

.field public mGLHandler:Landroid/os/Handler;

.field public mGLState:Lcom/xiaomi/renderengine/gl/GLState;

.field public mGlobalRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public final mOesTextureColorSpaces:[Lcom/xiaomi/renderengine/ColorSpace;

.field public final mOesTextures:[I

.field public mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

.field public mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

.field public mPreviewSize:Landroid/util/Size;

.field public final mRenderLock:Ljava/lang/Object;

.field public volatile mRenderRequested:Z

.field public mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

.field public mReqRenderListener:Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

.field public mScreenshotRenderer:Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;

.field public mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

.field public mSurfaceCreatedTimestamp:J

.field public final mSurfaceLock:Ljava/lang/Object;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

.field public mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

.field public final mTexTransMatrix:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/renderengine/RenderEngine;->EGL_CONFIG_ATTRS:[I

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreviewFrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x0
        0x3021
        0x0
        0x3040
        0x4
        0x3026
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    new-array v0, v0, [Lcom/xiaomi/renderengine/ColorSpace;

    .line 3
    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextureColorSpaces:[Lcom/xiaomi/renderengine/ColorSpace;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexTransMatrix:[F

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 6
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceLock:Ljava/lang/Object;

    .line 7
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderLock:Ljava/lang/Object;

    .line 8
    new-instance v3, Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-direct {v3, p0}, Lcom/xiaomi/renderengine/renderer/RendererManager;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    iput-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    .line 11
    iput v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCount:I

    .line 12
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCountingStart:J

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    iput-boolean v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    .line 15
    iput-boolean v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    .line 16
    iput-boolean v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderRequested:Z

    .line 17
    iput v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    const-string v0, "RenderEngine"

    const-string v1, "New RenderEngine instance"

    .line 18
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAppContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->init()V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;Z)V
    .locals 2

    .line 10
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " enabled: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/renderengine/RenderEngine;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/xiaomi/renderengine/RenderEngine;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexTransMatrix:[F

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->initDoubleBuffer()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/renderengine/RenderEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/xiaomi/renderengine/RenderEngine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/xiaomi/renderengine/RenderEngine;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    return p1
.end method

.method public static synthetic access$400(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/renderengine/RenderEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderRequested:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/xiaomi/renderengine/RenderEngine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderRequested:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mReqRenderListener:Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/xiaomi/renderengine/RenderEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/xiaomi/renderengine/RenderEngine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/xiaomi/renderengine/RenderEngine;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/xiaomi/renderengine/RenderEngine;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderLock:Ljava/lang/Object;

    return-object p0
.end method

.method private addInnerGlobalRenderer(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO0O0;

    invoke-direct {v1, p0, v0, p2}, LOooO0O0/OooO0o/OooO0O0/OooO0O0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addInnerGlobalRenderer fail, unknown renderer:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private haveEffect()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/renderengine/renderer/Renderer;

    .line 2
    iget-boolean v1, v1, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/renderer/Renderer;

    .line 4
    iget v1, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    const/16 v3, 0x64

    if-eq v1, v3, :cond_2

    const/16 v3, 0x65

    if-eq v1, v3, :cond_2

    iget-boolean v0, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private init()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/renderengine/gl/GLThread;

    sget-object v1, Lcom/xiaomi/renderengine/RenderEngine;->EGL_CONFIG_ATTRS:[I

    const-string v2, "RenderEngine"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooOOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO0O0/OooOOO0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0x65

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->addInnerGlobalRenderer(IZ)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/renderengine/RenderEngine;->addInnerGlobalRenderer(IZ)V

    .line 6
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v2, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mScreenshotRenderer:Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;

    .line 7
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    return-void
.end method

.method private initDoubleBuffer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const-string v1, "RenderEngine"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    iget v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferWidth:I

    iget v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferHeight:I

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDoubleBuffer new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferWidth:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferHeight:I

    if-eq v0, v2, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    .line 7
    new-instance v0, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    iget v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferWidth:I

    iget v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferHeight:I

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDoubleBuffer resize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private initializePreviewTexture()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createExternalOESTextures([I)V

    .line 5
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    new-instance v1, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$1;)V

    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 16
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create camera surface texture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RenderEngine"

    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onDrawFrame()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/renderengine/RenderEngine;->haveEffect()Z

    move-result v13

    .line 2
    iget v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/renderengine/RenderEngine;->processAnimation()V

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v14, 0x0

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame rendering count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasExtRenderer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v14

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderEngine"

    invoke-static {v2, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    if-eqz v1, :cond_4

    .line 7
    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz v2, :cond_4

    .line 8
    invoke-interface {v1}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->isProcessorReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-virtual {v2, v1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->onExternalRender(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {v1}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->prepareProcessor()V

    .line 11
    :goto_1
    iget-object v0, v0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    return-void

    :cond_4
    if-eqz v13, :cond_5

    .line 12
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    aget v2, v2, v14

    iget-object v3, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextureColorSpaces:[Lcom/xiaomi/renderengine/ColorSpace;

    aget-object v3, v3, v14

    iget-object v4, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 13
    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v4

    sget-object v5, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iget-object v6, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 14
    invoke-virtual {v6}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 15
    invoke-virtual {v7}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v7

    iget-object v8, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexTransMatrix:[F

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 16
    invoke-virtual {v10}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v10

    iget-object v11, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v11}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v11

    invoke-direct {v9, v14, v14, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v10, v0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    .line 17
    invoke-virtual/range {v1 .. v10}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(ILcom/xiaomi/renderengine/ColorSpace;ILcom/xiaomi/renderengine/ColorSpace;II[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    .line 18
    :cond_5
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/xiaomi/renderengine/renderer/Renderer;

    .line 19
    iget-boolean v1, v12, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    if-eqz v1, :cond_6

    .line 20
    new-instance v11, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    aget v2, v1, v14

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextureColorSpaces:[Lcom/xiaomi/renderengine/ColorSpace;

    aget-object v3, v1, v14

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 21
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v4

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 22
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 23
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v7

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 24
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v8

    iget v9, v0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    iget-object v10, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexTransMatrix:[F

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move-object/from16 v16, v1

    move-object v1, v11

    move-object v14, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v15

    move-object v15, v12

    move v12, v13

    invoke-direct/range {v1 .. v12}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;-><init>(ILcom/xiaomi/renderengine/ColorSpace;Lcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/ColorSpace;III[FLcom/xiaomi/renderengine/gl/GLState;Z)V

    .line 25
    invoke-virtual {v15, v14}, Lcom/xiaomi/renderengine/renderer/Renderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result v1

    .line 26
    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 27
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->swapBuffer()V

    goto :goto_3

    :cond_6
    move-object/from16 v16, v15

    :cond_7
    :goto_3
    move-object/from16 v15, v16

    const/4 v14, 0x0

    goto :goto_2

    .line 28
    :cond_8
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/xiaomi/renderengine/renderer/Renderer;

    .line 29
    iget-boolean v1, v15, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    if-eqz v1, :cond_9

    .line 30
    new-instance v12, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/16 v16, 0x0

    aget v2, v1, v16

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextureColorSpaces:[Lcom/xiaomi/renderengine/ColorSpace;

    aget-object v3, v1, v16

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 31
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v4

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 32
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 33
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v7

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 34
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v8

    iget v9, v0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    iget-object v10, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexTransMatrix:[F

    iget-object v11, v0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move-object v1, v12

    move-object/from16 v17, v14

    move-object v14, v12

    move v12, v13

    invoke-direct/range {v1 .. v12}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;-><init>(ILcom/xiaomi/renderengine/ColorSpace;Lcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/ColorSpace;III[FLcom/xiaomi/renderengine/gl/GLState;Z)V

    .line 35
    invoke-virtual {v15, v14}, Lcom/xiaomi/renderengine/renderer/Renderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result v1

    .line 36
    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 37
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->swapBuffer()V

    goto :goto_5

    :cond_9
    move-object/from16 v17, v14

    const/16 v16, 0x0

    :cond_a
    :goto_5
    move-object/from16 v14, v17

    goto :goto_4

    .line 38
    :cond_b
    iget-object v0, v0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    return-void
.end method

.method private outputFps()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface draw fps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCount:I

    int-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCountingStart:J

    sub-long v5, v0, v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RenderEngine"

    invoke-static {v3, v2}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCountingStart:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCount:I

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameCount:I

    return-void
.end method

.method private processAnimation()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    if-nez v1, :cond_0

    const-string v0, "RenderEngine"

    const-string v1, "processAnimation failed, the double buffer not ready yet!"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    new-instance v15, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;

    iget-object v3, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v14, 0x0

    aget v4, v3, v14

    iget-object v3, v0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextureColorSpaces:[Lcom/xiaomi/renderengine/ColorSpace;

    aget-object v5, v3, v14

    .line 4
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v6

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 5
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 6
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v9

    iget-object v1, v0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 7
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v10

    iget v11, v0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    iget-object v12, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexTransMatrix:[F

    iget-object v13, v0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/renderengine/RenderEngine;->haveEffect()Z

    move-result v1

    move-object v3, v15

    move v14, v1

    invoke-direct/range {v3 .. v14}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;-><init>(ILcom/xiaomi/renderengine/ColorSpace;Lcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/ColorSpace;III[FLcom/xiaomi/renderengine/gl/GLState;Z)V

    .line 9
    invoke-virtual {v2, v15}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result v1

    .line 10
    iget v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    if-lez v1, :cond_1

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 12
    iput v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    if-gtz v1, :cond_3

    .line 13
    iput v2, v0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    .line 14
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    goto :goto_0

    :cond_4
    if-lez v1, :cond_5

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateGLState(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p1}, Lcom/xiaomi/renderengine/gl/GLState;->identityAllM()V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/gl/GLState;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1}, Lcom/xiaomi/renderengine/gl/GLState;->translate(FFF)V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, p1, v0}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    const/4 v0, -0x4

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLThread;->getEglCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    .line 3
    new-instance v0, Lcom/xiaomi/renderengine/gl/GLState;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/gl/GLState;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    .line 4
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    .line 6
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    .line 7
    new-instance v0, Lcom/xiaomi/renderengine/program/TextureProgram;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/renderengine/program/TextureProgram;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    .line 8
    new-instance v0, Lcom/xiaomi/renderengine/program/TextureProgram;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/renderengine/program/TextureProgram;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    .line 32
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->startAnimation()V

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    return-void
.end method

.method public synthetic OooO00o(II)V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceChanged start on gl thread"

    .line 24
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->initializePreviewTexture()V

    .line 26
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 27
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    if-eqz v2, :cond_0

    .line 28
    invoke-interface {v2, v1, p1, p2}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/renderengine/RenderEngine;->updateGLState(II)V

    const-string p0, "onSurfaceChanged end on gl thread"

    .line 30
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(Landroid/graphics/Rect;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->setPreviewAreaParams(Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add global renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;I)V
    .locals 1

    .line 19
    iget v0, p1, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    if-ne v0, p2, :cond_0

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove global renderer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RenderEngine"

    invoke-static {v0, p2}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    const/4 p0, 0x0

    .line 23
    iput-boolean p0, p1, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;Z)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add inner global renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isFirst "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    :cond_1
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceCreated start on gl thread"

    .line 12
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->initializePreviewTexture()V

    .line 14
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    if-eqz p0, :cond_0

    .line 16
    invoke-interface {p0}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onSurfaceCreated()V

    :cond_0
    const-string p0, "onSurfaceCreated end on gl thread"

    .line 17
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add local renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;I)V
    .locals 1

    .line 5
    iget v0, p1, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    if-ne v0, p2, :cond_0

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove local renderer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RenderEngine"

    invoke-static {v0, p2}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 8
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 9
    iput-boolean p0, p1, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "release start on GL Thread"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    .line 4
    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/program/TextureProgram;->release()V

    .line 7
    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/program/TextureProgram;->release()V

    .line 10
    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooOO0o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0o/OooO0O0/OooOO0o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooO0oo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0o/OooO0O0/OooO0oo;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->clearAllRenderer()V

    const-string p0, "release end on GL Thread"

    .line 16
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO0OO(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 0

    .line 17
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    const-string v0, "RenderEngine"

    const-string v1, "requestExtRender reset animation to none"

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onFrameAvailable()V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onFrameDrawn()V

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    return-void
.end method

.method public synthetic OooO0Oo(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "resetFrameAvailableFlag() called on gl thread"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public addGlobalRenderer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooOOOo;

    invoke-direct {v1, p0, v0}, LOooO0O0/OooO0o/OooO0O0/OooOOOo;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addGlobalRenderer fail, unknown renderer:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addLocalRenderer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;

    invoke-direct {v1, p0, v0}, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addLocalRenderer fail, unknown renderer:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addPreviewSurface(Landroid/view/Surface;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->addPreviewSurface(Landroid/view/Surface;III)V

    return-void
.end method

.method public clearScreenshotRequest()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mScreenshotRenderer:Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->clearRequestList()V

    return-void
.end method

.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getEGLCore()Lcom/xiaomi/renderengine/gl/EglCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    return-object p0
.end method

.method public getExternalRenderer()Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    return-object p0
.end method

.method public getFinalEffectTexture()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->haveEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 4
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFrameAvailableFlag()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return p0
.end method

.method public getGLHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getPreviewOesTexture()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getPreviewTransform()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexTransMatrix:[F

    return-object p0
.end method

.method public getRenderLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getRendererAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/data/AttributeManager;->getAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :goto_0
    return-object p0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceChanged start"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->addPreviewSurface(Landroid/view/Surface;III)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooOO0O;

    invoke-direct {v1, p0, p2, p3}, LOooO0O0/OooO0o/OooO0O0/OooOO0O;-><init>(Lcom/xiaomi/renderengine/RenderEngine;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "onSurfaceChanged end"

    .line 4
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceCreated start"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooOOo0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0o/OooO0O0/OooOOo0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "onSurfaceCreated end"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceDestroyed start"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->releaseRenderer()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->removePreviewSurface(Landroid/view/Surface;)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 6
    :try_start_0
    iput-wide v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "RenderEngine"

    const-string v0, "onSurfaceDestroyed end"

    .line 8
    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "release start"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooO0o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0o/OooO0O0/OooO0o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    .line 4
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    .line 5
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/gl/GLThread;->release()V

    .line 7
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    :cond_0
    const-string p0, "release end"

    .line 8
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeGlobalRenderer(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooOOO;

    invoke-direct {v2, p0, v0, p1}, LOooO0O0/OooO0o/OooO0O0/OooOOO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeGlobalRenderer fail, unknown renderer:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeLocalRenderer(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooOO0;

    invoke-direct {v2, p0, v0, p1}, LOooO0O0/OooO0o/OooO0O0/OooOO0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeLocalRenderer fail, unknown renderer:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestExtRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->isProcessorReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO0O0/OooO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "RenderEngine"

    const-string v0, "skip ext rendering, because gl handler not ready yet!"

    .line 4
    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public requestScreenshot(IZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mScreenshotRenderer:Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->requestScreenshot(IZZLcom/xiaomi/renderengine/RenderEngine$StateCallback;)V

    :cond_0
    return-void
.end method

.method public resetFrameAvailableFlag()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooOOOO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO0O0/OooOOOO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "RenderEngine"

    const-string v0, "resetFrameAvailableFlag() called"

    .line 4
    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAnimationType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO00o;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO0O0/OooO00o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDisplayColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->setSurfaceColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V

    return-void
.end method

.method public setExternalRenderer(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setExternalRenderer: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviewDisplayArea(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO0O0/OooO0o0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPreviewSurface displayRect:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set camera surface oldSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    .line 4
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set surfaceTexture DefaultBufferSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    iput v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferWidth:I

    .line 14
    iput v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mBufferHeight:I

    .line 15
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    .line 2
    invoke-virtual {p0, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    .line 3
    invoke-virtual {p0, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRendererAttribute fail, not found renderer:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setRendererEnabled(IZ)V
    .locals 1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0o/OooO0O0/OooO0OO;

    invoke-direct {v0, p1, p2}, LOooO0O0/OooO0o/OooO0O0/OooO0OO;-><init>(Lcom/xiaomi/renderengine/renderer/Renderer;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setRequestRenderListener(Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mReqRenderListener:Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRequestRenderListener: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderEngine"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    return-void
.end method

.method public setTextureColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextureColorSpaces:[Lcom/xiaomi/renderengine/ColorSpace;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method
