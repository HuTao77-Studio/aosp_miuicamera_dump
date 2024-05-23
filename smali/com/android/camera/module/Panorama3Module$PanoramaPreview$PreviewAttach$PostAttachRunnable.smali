.class public Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostAttachRunnable"
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(ILcom/android/camera/protocol/protocols/PanoramaProtocol;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$2500(Lcom/android/camera/module/Panorama3Module;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$3800(Lcom/android/camera/module/Panorama3Module;)I

    move-result p0

    invoke-interface {p2, v0, p1, p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->onCaptureDirectionDecided(III)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/protocol/protocols/PanoramaProtocol;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$400(Lcom/android/camera/module/Panorama3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$3800(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "PostAttachRunnable captureDirectionDecided: %s %s"

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000;

    invoke-direct {v1, p0, v2}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v4}, Lcom/android/camera/module/Panorama3Module;->access$4602(Lcom/android/camera/module/Panorama3Module;Z)Z

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000ooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000ooO;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method
