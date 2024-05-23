.class public Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module$PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UiUpdateRunnable"
.end annotation


# instance fields
.field public mDetectResult:I

.field public final synthetic this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/Point;IILcom/android/camera/protocol/protocols/PanoramaProtocol;)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x2

    div-int/2addr p2, p3

    invoke-interface {p4, p1, p2}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDirectionPosition(Landroid/graphics/Point;I)V

    .line 2
    iget p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    const/16 p1, 0x1770

    .line 3
    invoke-interface {p4, p0, p1}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDirectionTooFast(ZI)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-interface {p4, p0, p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDirectionTooFast(ZI)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$4400(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/panorama/PositionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/panorama/PositionDetector;->getFrameRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame_rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$2500(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$2500(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$2500(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 12
    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$2500(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 15
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 17
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mPreviewImage is null in UiUpdateRunnable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 19
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;

    invoke-direct {v4, p0, v1, v0, v2}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;Landroid/graphics/Point;II)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setDetectResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    return-void
.end method
