.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/MIVICaptureManager;

.field private final synthetic OooO0O0:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/MIVICaptureManager;Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0;->OooO00o:Lcom/xiaomi/camera/MIVICaptureManager;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0;->OooO0O0:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0;->OooO00o:Lcom/xiaomi/camera/MIVICaptureManager;

    iget-object p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0;->OooO0O0:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/MIVICaptureManager;->OooO00o(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    return-void
.end method
