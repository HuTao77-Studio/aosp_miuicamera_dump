.class public final synthetic Ljava8/util/stream/FindOps$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# static fields
.field public static final instance:Ljava8/util/stream/FindOps$$Lambda$8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/FindOps$$Lambda$8;

    invoke-direct {v0}, Ljava8/util/stream/FindOps$$Lambda$8;-><init>()V

    sput-object v0, Ljava8/util/stream/FindOps$$Lambda$8;->instance:Ljava8/util/stream/FindOps$$Lambda$8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Supplier;
    .locals 1

    sget-object v0, Ljava8/util/stream/FindOps$$Lambda$8;->instance:Ljava8/util/stream/FindOps$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava8/util/stream/FindOps$FindSink$OfDouble;

    invoke-direct {p0}, Ljava8/util/stream/FindOps$FindSink$OfDouble;-><init>()V

    return-object p0
.end method
