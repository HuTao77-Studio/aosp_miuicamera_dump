.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/CameraConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/CameraConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;->OooO00o:Lcom/android/camera2/CameraConfigManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;->OooO00o:Lcom/android/camera2/CameraConfigManager;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->OoooOoO(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
