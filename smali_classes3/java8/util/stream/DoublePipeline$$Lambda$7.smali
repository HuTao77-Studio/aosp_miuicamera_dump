.class public final synthetic Ljava8/util/stream/DoublePipeline$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/DoubleBinaryOperator;


# static fields
.field public static final instance:Ljava8/util/stream/DoublePipeline$$Lambda$7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/DoublePipeline$$Lambda$7;

    invoke-direct {v0}, Ljava8/util/stream/DoublePipeline$$Lambda$7;-><init>()V

    sput-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$7;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/DoubleBinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$7;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$7;

    return-object v0
.end method


# virtual methods
.method public applyAsDouble(DD)D
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method
