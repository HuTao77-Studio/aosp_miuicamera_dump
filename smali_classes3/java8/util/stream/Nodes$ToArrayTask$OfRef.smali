.class public final Ljava8/util/stream/Nodes$ToArrayTask$OfRef;
.super Ljava8/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$ToArrayTask<",
        "TT;",
        "Ljava8/util/stream/Node<",
        "TT;>;",
        "Ljava8/util/stream/Nodes$ToArrayTask$OfRef<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/stream/Node;[Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node<",
            "TT;>;[TT;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p3}, Ljava8/util/stream/Nodes$ToArrayTask;-><init>(Ljava8/util/stream/Node;I)V

    .line 3
    iput-object p2, p0, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava8/util/stream/Node;[Ljava/lang/Object;ILjava8/util/stream/Nodes$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava8/util/stream/Node;[Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/Nodes$ToArrayTask$OfRef;Ljava8/util/stream/Node;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;",
            "Ljava8/util/stream/Node<",
            "TT;>;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/Nodes$ToArrayTask;-><init>(Ljava8/util/stream/Nodes$ToArrayTask;Ljava8/util/stream/Node;I)V

    .line 5
    iget-object p1, p1, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copyNodeToArray()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    iget-object v1, p0, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iget p0, p0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    invoke-interface {v0, v1, p0}, Ljava8/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask$OfRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava8/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v1, p1}, Ljava8/util/stream/Node;->getChild(I)Ljava8/util/stream/Node;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava8/util/stream/Nodes$ToArrayTask$OfRef;Ljava8/util/stream/Node;I)V

    return-object v0
.end method

.method public bridge synthetic makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;->makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask$OfRef;

    move-result-object p0

    return-object p0
.end method
