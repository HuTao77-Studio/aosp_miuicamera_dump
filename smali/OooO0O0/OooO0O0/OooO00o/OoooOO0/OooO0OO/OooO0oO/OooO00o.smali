.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0OO/OooO0oO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0OO/OooO0oO/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0OO/OooO0oO/OooO00o;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0OO/OooO0oO/OooO00o;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0OO/OooO0oO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0OO/OooO0oO/OooO00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-static {p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->OooOOOO(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method