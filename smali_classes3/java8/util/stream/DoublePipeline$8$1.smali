.class public Ljava8/util/stream/DoublePipeline$8$1;
.super Ljava8/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline$8;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
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
.field public final synthetic this$1:Ljava8/util/stream/DoublePipeline$8;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DoublePipeline$8;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$8$1;->this$1:Ljava8/util/stream/DoublePipeline$8;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedDouble;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/stream/DoublePipeline$8$1;->this$1:Ljava8/util/stream/DoublePipeline$8;

    iget-object v0, v0, Ljava8/util/stream/DoublePipeline$8;->val$action:Ljava8/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    .line 2
    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->accept(D)V

    return-void
.end method
