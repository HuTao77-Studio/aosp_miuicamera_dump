.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/o0000o/o00O0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o/o00O0oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/o0000o/o00O0oo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/o0000o/o00O0oo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/o0000o/o00O0oo;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o/o00O0oo;

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

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->o0O0O00()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method