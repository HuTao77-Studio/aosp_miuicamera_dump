.class public Ljava8/util/stream/DoublePipeline$5$1;
.super Ljava8/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline$5;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field public cancellationRequested:Z

.field public downstreamAsDouble:Ljava8/util/function/DoubleConsumer;

.field public final synthetic this$1:Ljava8/util/stream/DoublePipeline$5;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DoublePipeline$5;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$5$1;->this$1:Ljava8/util/stream/DoublePipeline$5;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedDouble;-><init>(Ljava8/util/stream/Sink;)V

    .line 2
    iget-object p1, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava8/util/stream/DoublePipeline$5$1$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/Sink;)Ljava8/util/function/DoubleConsumer;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava8/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ljava8/util/stream/DoublePipeline$5$1;->this$1:Ljava8/util/stream/DoublePipeline$5;

    iget-object v1, v1, Ljava8/util/stream/DoublePipeline$5;->val$mapper:Ljava8/util/function/DoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava8/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/DoubleStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 2
    :try_start_1
    iget-boolean p2, p0, Ljava8/util/stream/DoublePipeline$5$1;->cancellationRequested:Z

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p1}, Ljava8/util/stream/DoubleStream;->sequential()Ljava8/util/stream/DoubleStream;

    move-result-object p2

    iget-object p0, p0, Ljava8/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava8/util/function/DoubleConsumer;

    invoke-interface {p2, p0}, Ljava8/util/stream/DoubleStream;->forEach(Ljava8/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava8/util/stream/DoubleStream;->sequential()Ljava8/util/stream/DoubleStream;

    move-result-object p2

    invoke-interface {p2}, Ljava8/util/stream/DoubleStream;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object p2

    .line 5
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava8/util/function/DoubleConsumer;

    invoke-interface {p2, v0}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava8/util/stream/BaseStream;->close()V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava8/util/stream/BaseStream;->close()V

    :cond_4
    throw p0
.end method

.method public begin(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ljava8/util/stream/DoublePipeline$5$1;->cancellationRequested:Z

    .line 2
    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result p0

    return p0
.end method
