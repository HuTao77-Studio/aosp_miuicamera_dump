.class public final Ljava8/util/stream/DoubleStreams$1;
.super Ljava8/util/Spliterators$AbstractDoubleSpliterator;
.source "DoubleStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoubleStreams;->iterate(DLjava8/util/function/DoubleUnaryOperator;)Ljava8/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public prev:D

.field public started:Z

.field public final synthetic val$f:Ljava8/util/function/DoubleUnaryOperator;

.field public final synthetic val$seed:D


# direct methods
.method public constructor <init>(JILjava8/util/function/DoubleUnaryOperator;D)V
    .locals 0

    .line 1
    iput-object p4, p0, Ljava8/util/stream/DoubleStreams$1;->val$f:Ljava8/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Ljava8/util/stream/DoubleStreams$1;->val$seed:D

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoubleStreams$1;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 4

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/DoubleStreams$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ljava8/util/stream/DoubleStreams$1;->val$f:Ljava8/util/function/DoubleUnaryOperator;

    iget-wide v2, p0, Ljava8/util/stream/DoubleStreams$1;->prev:D

    invoke-interface {v0, v2, v3}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v2, p0, Ljava8/util/stream/DoubleStreams$1;->val$seed:D

    .line 6
    iput-boolean v1, p0, Ljava8/util/stream/DoubleStreams$1;->started:Z

    .line 7
    :goto_0
    iput-wide v2, p0, Ljava8/util/stream/DoubleStreams$1;->prev:D

    invoke-interface {p1, v2, v3}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return v1
.end method
