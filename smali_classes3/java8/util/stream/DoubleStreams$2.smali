.class public final Ljava8/util/stream/DoubleStreams$2;
.super Ljava8/util/Spliterators$AbstractDoubleSpliterator;
.source "DoubleStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoubleStreams;->iterate(DLjava8/util/function/DoublePredicate;Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public finished:Z

.field public prev:D

.field public started:Z

.field public final synthetic val$hasNext:Ljava8/util/function/DoublePredicate;

.field public final synthetic val$next:Ljava8/util/function/DoubleUnaryOperator;

.field public final synthetic val$seed:D


# direct methods
.method public constructor <init>(JILjava8/util/function/DoubleUnaryOperator;DLjava8/util/function/DoublePredicate;)V
    .locals 0

    .line 1
    iput-object p4, p0, Ljava8/util/stream/DoubleStreams$2;->val$next:Ljava8/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Ljava8/util/stream/DoubleStreams$2;->val$seed:D

    iput-object p7, p0, Ljava8/util/stream/DoubleStreams$2;->val$hasNext:Ljava8/util/function/DoublePredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoubleStreams$2;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 3

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/DoubleStreams$2;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ljava8/util/stream/DoubleStreams$2;->finished:Z

    .line 5
    iget-boolean v0, p0, Ljava8/util/stream/DoubleStreams$2;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/DoubleStreams$2;->val$next:Ljava8/util/function/DoubleUnaryOperator;

    iget-wide v1, p0, Ljava8/util/stream/DoubleStreams$2;->prev:D

    invoke-interface {v0, v1, v2}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Ljava8/util/stream/DoubleStreams$2;->val$seed:D

    .line 6
    :goto_0
    iget-object v2, p0, Ljava8/util/stream/DoubleStreams$2;->val$hasNext:Ljava8/util/function/DoublePredicate;

    invoke-interface {v2, v0, v1}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    .line 8
    iget-object v2, p0, Ljava8/util/stream/DoubleStreams$2;->val$next:Ljava8/util/function/DoubleUnaryOperator;

    invoke-interface {v2, v0, v1}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoubleStreams$2;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 5

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/DoubleStreams$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Ljava8/util/stream/DoubleStreams$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ljava8/util/stream/DoubleStreams$2;->val$next:Ljava8/util/function/DoubleUnaryOperator;

    iget-wide v3, p0, Ljava8/util/stream/DoubleStreams$2;->prev:D

    invoke-interface {v0, v3, v4}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v3

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v3, p0, Ljava8/util/stream/DoubleStreams$2;->val$seed:D

    .line 7
    iput-boolean v2, p0, Ljava8/util/stream/DoubleStreams$2;->started:Z

    .line 8
    :goto_0
    iget-object v0, p0, Ljava8/util/stream/DoubleStreams$2;->val$hasNext:Ljava8/util/function/DoublePredicate;

    invoke-interface {v0, v3, v4}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iput-boolean v2, p0, Ljava8/util/stream/DoubleStreams$2;->finished:Z

    return v1

    .line 10
    :cond_2
    iput-wide v3, p0, Ljava8/util/stream/DoubleStreams$2;->prev:D

    invoke-interface {p1, v3, v4}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return v2
.end method
