.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0O;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, LOooO0O0/OooO0O0/OooO0O0/o0000o0o/OooO00o/OooO0O0/OooO00o/OooOO0O;->OooO00o:I

    check-cast p1, Lcom/android/camera/protocol/protocols/ConfigChanges;

    invoke-static {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeWidgetCameraCV;->OooO00o(ILcom/android/camera/protocol/protocols/ConfigChanges;)V

    return-void
.end method
