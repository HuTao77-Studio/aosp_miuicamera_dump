.class public Lcom/xiaomi/renderengine/renderer/PreviewRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "PreviewRenderer.java"


# static fields
.field public static final EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

.field public static final TAG:Ljava/lang/String; = "PreviewRenderer"


# instance fields
.field public mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

.field public mColorMode:I

.field public volatile mHasSurface:Z

.field public mPreviewArea:Landroid/graphics/Rect;

.field public mPreviewSurface:Landroid/view/Surface;

.field public mSurfaceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

.field public mSurfaceHeight:I

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile mSurfaceUpdated:Z

.field public mSurfaceWidth:I

.field public mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mColorMode:I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    .line 6
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    .line 7
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    .line 8
    sget-object v0, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    const/16 v0, 0x64

    .line 9
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 10
    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    return-void
.end method

.method private getEglWindowSurfaceAttributes(I)[I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "PreviewRenderer"

    if-eq p1, v0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "getEglWindowSurfaceAttributes: NONE"

    .line 2
    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-object p0

    :cond_0
    const-string p0, "getEglWindowSurfaceAttributes: HDR"

    .line 4
    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v1, [I

    .line 5
    fill-array-data p0, :array_0

    return-object p0

    :cond_1
    const/16 p1, 0x3490

    .line 6
    invoke-static {p1}, Lcom/xiaomi/renderengine/ColorSpace;->requiredEglExtensions(I)[Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/gl/EglCore;->supports([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 8
    sget-object p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-object p0

    :cond_2
    const-string p0, "getEglWindowSurfaceAttributes: WCG"

    .line 9
    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v1, [I

    .line 10
    fill-array-data p0, :array_1

    return-object p0

    :array_0
    .array-data 4
        0x309d
        0x3340
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x309d
        0x3490
        0x3038
    .end array-data
.end method

.method private getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowSurface start, updated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewRenderer"

    invoke-static {v3, v2}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowSurface mPreviewSurface:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v2, Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    .line 11
    invoke-virtual {v4}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    iget v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mColorMode:I

    .line 12
    invoke-direct {p0, v6}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getEglWindowSurfaceAttributes(I)[I

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/view/Surface;[I)V

    iput-object v2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowSurface end, cost="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 17
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    return-object p0
.end method

.method private renderToSurface(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;ZI)I
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    .line 4
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    if-eqz p2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v2, v1, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    iget-object v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mSourceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    iget v7, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    iget v8, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    iget-object v10, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    iget-object v11, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual/range {v2 .. v11}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(ILcom/xiaomi/renderengine/ColorSpace;ILcom/xiaomi/renderengine/ColorSpace;II[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v2, v1, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget-object v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTargetColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    iget v7, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    iget v8, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    iget-object v10, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    iget-object v11, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move v3, p3

    invoke-virtual/range {v2 .. v11}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(ILcom/xiaomi/renderengine/ColorSpace;ILcom/xiaomi/renderengine/ColorSpace;II[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    if-eqz p2, :cond_1

    .line 8
    iget p3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    :cond_1
    return p3

    :cond_2
    const-string p0, "PreviewRenderer"

    const-string p1, "skip preview render, window surface not ready yet!"

    .line 9
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addPreviewSurface(Landroid/view/Surface;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mColorMode:I

    if-eq v0, p4, :cond_1

    .line 3
    :cond_0
    iput p2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    .line 4
    iput p3, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    .line 5
    iput p4, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mColorMode:I

    .line 6
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    .line 7
    iput-boolean v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    const-string v0, "PreviewRenderer"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreviewSurface surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " width="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " colorMode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "PreviewRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "PreviewRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    .line 6
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    :cond_1
    return-void
.end method

.method public onExternalRender(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0, v0, v0}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->onDrawFrame(IIZ)Z

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    goto :goto_0

    :cond_0
    const-string p0, "PreviewRenderer"

    const-string p1, "skip external preview render, window surface not ready yet!"

    .line 7
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    .line 2
    iget v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mAnimType:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->renderToSurface(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;ZI)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHaveEffect:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->renderToSurface(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;ZI)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public removePreviewSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "PreviewRenderer"

    const-string p1, "removePreviewSurface"

    .line 5
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPreviewAreaParams(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreviewAreaParams "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewRenderer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSurfaceColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceColorSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewRenderer"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->startAnimation()V

    :cond_0
    return-void
.end method
