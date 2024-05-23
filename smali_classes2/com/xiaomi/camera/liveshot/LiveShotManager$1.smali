.class public Lcom/xiaomi/camera/liveshot/LiveShotManager$1;
.super Ljava/lang/Object;
.source "LiveShotManager.java"

# interfaces
.implements Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/liveshot/LiveShotManager;->getSavingCallback()Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/liveshot/LiveShotManager;

.field public final synthetic val$cb:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

.field public final synthetic val$stopCb:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/liveshot/LiveShotManager;Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->this$0:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    iput-object p2, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$cb:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    iput-object p3, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$stopCb:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClipSavingCancelled(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$cb:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;->onVideoClipSavingCancelled(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$stopCb:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onVideoClipSavingCompleted(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$cb:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;->onVideoClipSavingCompleted(Ljava/lang/Object;Ljava/lang/String;J)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$stopCb:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onVideoClipSavingException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$cb:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;->onVideoClipSavingException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager$1;->val$stopCb:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
