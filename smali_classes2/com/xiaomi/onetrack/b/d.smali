.class public Lcom/xiaomi/onetrack/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/c;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/d;->b:Lcom/xiaomi/onetrack/b/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/d;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/d;->a:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.SCREEN_ON"

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "EventManager"

    const-string v2, "screen on/off"

    .line 4
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 6
    :goto_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/p;->a()Lcom/xiaomi/onetrack/b/p;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/onetrack/b/p;->a(IZ)V

    :cond_2
    return-void
.end method
