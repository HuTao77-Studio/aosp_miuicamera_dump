.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

.field private final synthetic OooO0O0:Landroid/graphics/Point;

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;Landroid/graphics/Point;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO00o:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO0O0:Landroid/graphics/Point;

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO0OO:I

    iput p4, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO00o:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO0O0:Landroid/graphics/Point;

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO0OO:I

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O000;->OooO0Oo:I

    check-cast p1, Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->OooO00o(Landroid/graphics/Point;IILcom/android/camera/protocol/protocols/PanoramaProtocol;)V

    return-void
.end method
