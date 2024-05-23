.class public final Lokhttp3/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field public final address:Lokhttp3/Address;

.field public final inetSocketAddress:Ljava/net/InetSocketAddress;

.field public final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 2
    iput-object p1, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 3
    iput-object p2, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 4
    iput-object p3, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inetSocketAddress == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "proxy == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "address == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public address()Lokhttp3/Address;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lokhttp3/Route;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/Route;

    iget-object v0, p1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 2
    invoke-virtual {v0, v1}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    iget-object v1, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object p0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 4
    invoke-virtual {p1, p0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object p0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public requiresTunnel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public socketAddress()Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
