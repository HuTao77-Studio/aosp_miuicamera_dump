.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;
.super Ljava/lang/Object;
.source "LottieCompositionCache.java"


# static fields
.field public static final OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;


# instance fields
.field public final OooO00o:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    return-void
.end method

.method public static OooO0O0()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;
    .locals 1

    .line 1
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooO0o;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0O0/OooO00o/OooO00o/OooO0o;

    return-object p0
.end method

.method public OooO00o()V
    .locals 0

    .line 3
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method public OooO00o(I)V
    .locals 0

    .line 4
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->resize(I)V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;LOooO0O0/OooO00o/OooO00o/OooO0o;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
