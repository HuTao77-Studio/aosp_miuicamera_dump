.class public final Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.super Ljava/lang/Object;
.source "BlockParsedResult.java"


# instance fields
.field public final decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

.field public final finished:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    .line 4
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-void
.end method


# virtual methods
.method public getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    return p0
.end method
