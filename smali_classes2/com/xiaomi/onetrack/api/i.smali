.class public Lcom/xiaomi/onetrack/api/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Number;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/g;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/g;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/i;->b:Ljava/lang/Number;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ot_profile_increment"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/g;->b(Lcom/xiaomi/onetrack/api/g;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/i;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/i;->b:Ljava/lang/Number;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/g;->a(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/g;->c(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/g;->d(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v5

    invoke-static {v2, v3, v4, v1, v5}, Lcom/xiaomi/onetrack/api/c;->b(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/g;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/g;->e(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/api/d;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userProfileIncrement single error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
