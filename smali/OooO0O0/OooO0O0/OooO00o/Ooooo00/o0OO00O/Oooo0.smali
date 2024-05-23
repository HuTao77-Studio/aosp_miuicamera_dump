.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Ooooo00/o0OO00O/Oooo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo00/o0OO00O/Oooo0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o0OO00O/Oooo0;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o0OO00O/Oooo0;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o0OO00O/Oooo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo00/o0OO00O/Oooo0;

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

    check-cast p1, Lcom/android/camera/AppController;

    invoke-interface {p1}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object p0

    return-object p0
.end method
