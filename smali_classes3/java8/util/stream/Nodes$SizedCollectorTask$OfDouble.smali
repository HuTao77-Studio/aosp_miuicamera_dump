.class public final Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;
.super Ljava8/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Ljava8/util/stream/Sink$OfDouble;",
        "Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble<",
        "TP_IN;>;>;",
        "Ljava8/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field public final array:[D


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;[D)V"
        }
    .end annotation

    .line 1
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava8/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;I)V

    .line 2
    iput-object p3, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;Ljava8/util/Spliterator;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 3
    iget-object v0, p1, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljava8/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava8/util/stream/Nodes$SizedCollectorTask;Ljava8/util/Spliterator;JJI)V

    .line 4
    iget-object p1, p1, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    iput-object p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3

    .line 2
    iget v0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->index:I

    iget v1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->fence:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->index:I

    aput-wide p1, v1, v0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    iget p0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->index:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfDouble;->accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble<",
            "TP_IN;>;"
        }
    .end annotation

    .line 2
    new-instance v7, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;Ljava8/util/Spliterator;JJ)V

    return-object v7
.end method

.method public bridge synthetic makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-result-object p0

    return-object p0
.end method
