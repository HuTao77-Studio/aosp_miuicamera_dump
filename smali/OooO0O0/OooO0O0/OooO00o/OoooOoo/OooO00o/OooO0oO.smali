.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o/OooO0oO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o/OooO0oO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o/OooO0oO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o/OooO0oO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o/OooO0oO;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->OooO0O0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method