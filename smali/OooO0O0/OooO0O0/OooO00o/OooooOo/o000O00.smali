.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/ref/WeakReference;

.field private final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O00;->OooO00o:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O00;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O00;->OooO00o:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000O00;->OooO0O0:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/camera/module/Panorama3Module;->OooO00o(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method
