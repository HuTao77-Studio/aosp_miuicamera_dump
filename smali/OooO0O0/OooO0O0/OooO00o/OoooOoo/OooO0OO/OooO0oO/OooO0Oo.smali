.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0oO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mode/idcard/IdCardModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/idcard/IdCardModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0oO/OooO0Oo;->OooO00o:Lcom/android/camera/features/mode/idcard/IdCardModule;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0oO/OooO0Oo;->OooO00o:Lcom/android/camera/features/mode/idcard/IdCardModule;

    check-cast p1, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->OooO00o(Lcom/android/camera/protocol/protocols/IDCardModeProtocol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
