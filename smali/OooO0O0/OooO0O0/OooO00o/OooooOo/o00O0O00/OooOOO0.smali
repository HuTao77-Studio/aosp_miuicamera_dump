.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O0O00/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/media/MediaRecorder;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O0O00/OooOOO0;->OooO00o:Landroid/media/MediaRecorder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o00O0O00/OooOOO0;->OooO00o:Landroid/media/MediaRecorder;

    invoke-static {p0}, Lcom/android/camera/module/video/RecorderController;->OooO00o(Landroid/media/MediaRecorder;)V

    return-void
.end method
