.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000o0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/ref/WeakReference;

.field private final synthetic OooO0O0:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000o0o;->OooO00o:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000o0o;->OooO0O0:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000o0o;->OooO00o:Ljava/lang/ref/WeakReference;

    iget-wide v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000o0o;->OooO0O0:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/Panorama3Module;->OooO00o(Ljava/lang/ref/WeakReference;J)V

    return-void
.end method
