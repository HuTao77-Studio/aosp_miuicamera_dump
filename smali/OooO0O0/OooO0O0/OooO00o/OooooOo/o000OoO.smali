.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;

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

    check-cast p1, Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->OooO00o(Lcom/android/camera/protocol/protocols/PanoramaProtocol;)V

    return-void
.end method
