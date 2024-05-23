.class public final synthetic LOooO0O0/OooO0o/OooO0O0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/renderer/Renderer;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/renderer/Renderer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO0O0/OooO0OO;->OooO00o:Lcom/xiaomi/renderengine/renderer/Renderer;

    iput-boolean p2, p0, LOooO0O0/OooO0o/OooO0O0/OooO0OO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO0O0/OooO0OO;->OooO00o:Lcom/xiaomi/renderengine/renderer/Renderer;

    iget-boolean p0, p0, LOooO0O0/OooO0o/OooO0O0/OooO0OO;->OooO0O0:Z

    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/RenderEngine;->OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;Z)V

    return-void
.end method
