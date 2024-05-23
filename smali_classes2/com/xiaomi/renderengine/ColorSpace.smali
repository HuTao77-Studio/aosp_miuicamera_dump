.class public abstract enum Lcom/xiaomi/renderengine/ColorSpace;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/ColorSpace$Description;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/renderengine/ColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum BT2020_HLG:Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum BT2020_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum BT2020_PQ:Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum DISPLAY_P3:Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum DISPLAY_P3_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum DISPLAY_P3_PASSTHROUGH:Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum SRGB:Lcom/xiaomi/renderengine/ColorSpace;

.field public static final enum SRGB_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$1;

    const/4 v1, 0x0

    const-string v2, "SRGB"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/renderengine/ColorSpace$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    .line 2
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$2;

    const/4 v2, 0x1

    const-string v3, "SRGB_LINEAR"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/renderengine/ColorSpace$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->SRGB_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;

    .line 3
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$3;

    const/4 v3, 0x2

    const-string v4, "DISPLAY_P3"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/renderengine/ColorSpace$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->DISPLAY_P3:Lcom/xiaomi/renderengine/ColorSpace;

    .line 4
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$4;

    const/4 v4, 0x3

    const-string v5, "DISPLAY_P3_LINEAR"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/renderengine/ColorSpace$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->DISPLAY_P3_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;

    .line 5
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$5;

    const/4 v5, 0x4

    const-string v6, "DISPLAY_P3_PASSTHROUGH"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/renderengine/ColorSpace$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->DISPLAY_P3_PASSTHROUGH:Lcom/xiaomi/renderengine/ColorSpace;

    .line 6
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$6;

    const/4 v6, 0x5

    const-string v7, "BT2020_HLG"

    invoke-direct {v0, v7, v6}, Lcom/xiaomi/renderengine/ColorSpace$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->BT2020_HLG:Lcom/xiaomi/renderengine/ColorSpace;

    .line 7
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$7;

    const/4 v7, 0x6

    const-string v8, "BT2020_PQ"

    invoke-direct {v0, v8, v7}, Lcom/xiaomi/renderengine/ColorSpace$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->BT2020_PQ:Lcom/xiaomi/renderengine/ColorSpace;

    .line 8
    new-instance v0, Lcom/xiaomi/renderengine/ColorSpace$8;

    const/4 v8, 0x7

    const-string v9, "BT2020_LINEAR"

    invoke-direct {v0, v9, v8}, Lcom/xiaomi/renderengine/ColorSpace$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/renderengine/ColorSpace;->BT2020_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/xiaomi/renderengine/ColorSpace;

    .line 9
    sget-object v10, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    aput-object v10, v9, v1

    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->SRGB_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;

    aput-object v1, v9, v2

    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->DISPLAY_P3:Lcom/xiaomi/renderengine/ColorSpace;

    aput-object v1, v9, v3

    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->DISPLAY_P3_LINEAR:Lcom/xiaomi/renderengine/ColorSpace;

    aput-object v1, v9, v4

    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->DISPLAY_P3_PASSTHROUGH:Lcom/xiaomi/renderengine/ColorSpace;

    aput-object v1, v9, v5

    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->BT2020_HLG:Lcom/xiaomi/renderengine/ColorSpace;

    aput-object v1, v9, v6

    sget-object v1, Lcom/xiaomi/renderengine/ColorSpace;->BT2020_PQ:Lcom/xiaomi/renderengine/ColorSpace;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/xiaomi/renderengine/ColorSpace;->$VALUES:[Lcom/xiaomi/renderengine/ColorSpace;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/xiaomi/renderengine/ColorSpace$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/renderengine/ColorSpace;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static requiredEglExtensions(I)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/renderengine/ColorSpace;->values()[Lcom/xiaomi/renderengine/ColorSpace;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/xiaomi/renderengine/ColorSpace;->eglColorSpace()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/xiaomi/renderengine/ColorSpace;->eglExtensions()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown eglColorSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/renderengine/ColorSpace;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/renderengine/ColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/renderengine/ColorSpace;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/renderengine/ColorSpace;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/renderengine/ColorSpace;->$VALUES:[Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {v0}, [Lcom/xiaomi/renderengine/ColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/renderengine/ColorSpace;

    return-object v0
.end method


# virtual methods
.method public abstract eglColorSpace()I
.end method

.method public abstract eglExtensions()[Ljava/lang/String;
.end method
