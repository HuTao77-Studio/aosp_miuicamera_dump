.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0o0;

    invoke-direct {v0}, LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0o0;-><init>()V

    sput-object v0, LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0o0;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0o0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->OooO00o(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;

    move-result-object p0

    return-object p0
.end method
