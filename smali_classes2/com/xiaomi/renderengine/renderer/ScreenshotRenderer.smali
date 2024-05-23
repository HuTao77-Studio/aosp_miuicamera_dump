.class public Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "ScreenshotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenshotRenderer"


# instance fields
.field public mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

.field public mLock:Ljava/lang/Object;

.field public volatile mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenShotListener:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    const/16 v0, 0x65

    .line 6
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    return-void
.end method

.method private copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;IIZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move/from16 v6, p4

    .line 1
    iget-boolean v2, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHaveEffect:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v0, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget-object v2, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 3
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v2

    iget-object v4, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTargetColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    .line 4
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v7

    sget-object v8, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iget-object v9, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v3, v3, p3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v11, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move v1, v2

    move-object v2, v4

    move v3, v7

    move-object v4, v8

    move v5, p3

    move/from16 v6, p4

    move-object v7, v9

    move-object v8, v10

    move/from16 v9, p5

    move-object v10, v11

    .line 5
    invoke-virtual/range {v0 .. v10}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(ILcom/xiaomi/renderengine/ColorSpace;ILcom/xiaomi/renderengine/ColorSpace;II[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/gl/GLState;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v0, v0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget v2, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    iget-object v4, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mSourceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    .line 7
    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v7

    sget-object v8, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iget-object v9, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v3, v3, p3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v11, v1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    move v1, v2

    move-object v2, v4

    move v3, v7

    move-object v4, v8

    move v5, p3

    move/from16 v6, p4

    move-object v7, v9

    move-object v8, v10

    move/from16 v9, p5

    move-object v10, v11

    .line 8
    invoke-virtual/range {v0 .. v10}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(ILcom/xiaomi/renderengine/ColorSpace;ILcom/xiaomi/renderengine/ColorSpace;II[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/gl/GLState;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public clearRequestList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const-string p0, "ScreenshotRenderer"

    const-string v1, "clearScreenshotRequestList"

    .line 3
    invoke-static {p0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "ScreenshotRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "ScreenshotRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 4
    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;

    .line 6
    iget v5, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 7
    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v5}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v5

    .line 8
    iget-object v6, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v6}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v6

    goto :goto_0

    :cond_0
    const/16 v5, 0x2d0

    .line 9
    iget-object v6, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v6}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v7}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    .line 10
    :goto_0
    iget v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    if-ne v5, v7, :cond_1

    iget v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    if-eq v6, v7, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 11
    :cond_2
    iget-boolean v7, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsMirror:Z

    if-nez v7, :cond_4

    iget-boolean v7, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsFilmCrop:Z

    if-nez v7, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-boolean v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHaveEffect:Z

    if-nez v4, :cond_a

    .line 13
    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;IIZ)V

    .line 14
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    goto :goto_4

    :cond_4
    :goto_1
    if-eqz v4, :cond_8

    .line 15
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    if-nez v2, :cond_5

    .line 16
    new-instance v2, Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {v2, v5, v6}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;-><init>(II)V

    iput-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    goto :goto_2

    .line 17
    :cond_5
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v2

    if-eq v2, v6, :cond_7

    .line 18
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->release()V

    .line 19
    new-instance v2, Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {v2, v5, v6}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;-><init>(II)V

    iput-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 20
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mFramebuffer:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    goto :goto_3

    .line 21
    :cond_8
    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 22
    :goto_3
    iget-boolean v12, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsMirror:Z

    move-object v7, p0

    move-object v8, p1

    move-object v9, v2

    move v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;IIZ)V

    .line 23
    iget-boolean v4, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mIsFilmCrop:Z

    if-eqz v4, :cond_9

    .line 24
    iput-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    .line 25
    iput v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    .line 26
    iput v6, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    .line 27
    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v4, p1}, Lcom/xiaomi/renderengine/gl/GLUtils;->drawMiMovieBlackBridgeEGL(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)V

    .line 28
    :cond_9
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 29
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v2

    .line 30
    :cond_a
    :goto_4
    invoke-static {v2, v5, v6}, Lcom/xiaomi/renderengine/gl/GLUtils;->createBufferFromFbo(III)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mScreenShotListener:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget v2, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mType:I

    invoke-interface {p0, p1, v5, v6, v2}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onPreviewPixelsRead([BIII)V

    const-string p0, "ScreenshotRenderer"

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request processing completed. type:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;->mType:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_b
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestScreenshot(IZZLcom/xiaomi/renderengine/RenderEngine$StateCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mRequestList:Ljava/util/List;

    new-instance v2, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;

    invoke-direct {v2, p1, p3, p2}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer$Request;-><init>(IZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iput-object p4, p0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;->mScreenShotListener:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    const-string p0, "ScreenshotRenderer"

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestScreenshot type:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isFilmCrop:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isMirror:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
