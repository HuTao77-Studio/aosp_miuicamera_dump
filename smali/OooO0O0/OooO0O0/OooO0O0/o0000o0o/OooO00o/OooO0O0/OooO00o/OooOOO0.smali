.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOOO0;

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

    check-cast p1, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    return-void
.end method
