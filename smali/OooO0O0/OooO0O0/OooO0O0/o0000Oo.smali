.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/o0000Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000Oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/o0000Oo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/o0000Oo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/o0000Oo;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/o0000Oo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageReleased(Landroid/media/ImageWriter;)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera2/MiCameraSurfaceManager;->OooO00o(Landroid/media/ImageWriter;)V

    return-void
.end method
