.class public Lcom/android/camera/module/Panorama3Module$DecideDirection;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Lcom/android/camera/module/Panorama3Module$PanoramaState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecideDirection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;
    }
.end annotation


# instance fields
.field public mHasSubmit:Z

.field public final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->mHasSubmit:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$DecideDirection;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DecideDirection.onSaveImage: engine finished"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/Panorama3Module;->access$2800(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->mHasSubmit:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "submit DecideDirectionAttach"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$3000(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;-><init>(Lcom/android/camera/module/Panorama3Module$DecideDirection;Lcom/android/camera/module/Panorama3Module$1;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->mHasSubmit:Z

    :cond_1
    return v0
.end method
