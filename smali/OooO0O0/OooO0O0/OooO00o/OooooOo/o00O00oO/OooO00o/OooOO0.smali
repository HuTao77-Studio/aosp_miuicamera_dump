.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00oO/OooO00o/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00oO/OooO00o/OooOO0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00oO/OooO00o/OooOO0;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00oO/OooO00o/OooOO0;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00oO/OooO00o/OooOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O00oO/OooO00o/OooOO0;

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

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooOO0o(Lcom/android/camera/module/Module;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method