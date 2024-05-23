.class public LOooO0O0/OooO0Oo/OooO00o/OooO00o$OooO00o;
.super Lcom/xiaomi/camera/util/TypedValue;
.source "DataItemFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0O0/OooO0Oo/OooO00o/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/util/TypedValue<",
        "Lcom/xiaomi/renderengine/ColorSpace$Description;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO0O0:Ljava/lang/String; = "persist.vendor.camera.sensor.EnableP3ColorSpace"


# instance fields
.field public final synthetic OooO00o:LOooO0O0/OooO0Oo/OooO00o/OooO00o;


# direct methods
.method public constructor <init>(LOooO0O0/OooO0Oo/OooO00o/OooO00o;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o$OooO00o;->OooO00o:LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/TypedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/xiaomi/renderengine/ColorSpace$Description;
    .locals 4

    .line 2
    iget-object v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o$OooO00o;->OooO00o:LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    invoke-static {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(LOooO0O0/OooO0Oo/OooO00o/OooO00o;)Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0O()I

    move-result v0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0oO()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextureColorSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o$OooO00o;->OooO00o:LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    invoke-static {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(LOooO0O0/OooO0Oo/OooO00o/OooO00o;)Lcom/mi/device/Common;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOOo()I

    move-result p0

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0oO()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayColorSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->DISPLAY_P3_PASSTHROUGH:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, "persist.vendor.camera.sensor.EnableP3ColorSpace"

    .line 7
    invoke-static {v2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0oO()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Display P3 disabled by property"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Lcom/xiaomi/renderengine/ColorSpace$Description;->DEFAULT:Lcom/xiaomi/renderengine/ColorSpace$Description;

    return-object p0

    .line 10
    :cond_0
    new-instance v1, Lcom/xiaomi/renderengine/ColorSpace$Description;

    invoke-direct {v1, v0, p0}, Lcom/xiaomi/renderengine/ColorSpace$Description;-><init>(II)V

    return-object v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o$OooO00o;->create()Lcom/xiaomi/renderengine/ColorSpace$Description;

    move-result-object p0

    return-object p0
.end method
