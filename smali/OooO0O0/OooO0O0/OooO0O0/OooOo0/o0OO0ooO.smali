.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOo0/o0OO0ooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooOo0/o0OO0ooO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/OooOo0/o0OO0ooO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/OooOo0/o0OO0ooO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/OooOo0/o0OO0ooO;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooOo0/o0OO0ooO;

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

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->OooOO0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
