.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/o0000o/ooOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o/ooOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/o0000o/ooOO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/o0000o/ooOO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/o0000o/ooOO;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o/ooOO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->o0OoO0o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method