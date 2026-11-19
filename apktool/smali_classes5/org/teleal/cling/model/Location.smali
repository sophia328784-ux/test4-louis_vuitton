.class public Lorg/teleal/cling/model/Location;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/teleal/cling/model/NetworkAddress;

.field public final b:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/NetworkAddress;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/Location;->a:Lorg/teleal/cling/model/NetworkAddress;

    iput-object p2, p0, Lorg/teleal/cling/model/Location;->b:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public final a()Ljava/net/URL;
    .locals 6

    iget-object v0, p0, Lorg/teleal/cling/model/Location;->a:Lorg/teleal/cling/model/NetworkAddress;

    iget-object v1, v0, Lorg/teleal/cling/model/NetworkAddress;->a:Ljava/net/InetAddress;

    iget v0, v0, Lorg/teleal/cling/model/NetworkAddress;->b:I

    sget-object v2, Lorg/teleal/common/util/URIUtil;->a:Ljava/util/BitSet;

    const-string v2, "InetAddress is neither IPv4 nor IPv6: "

    const-string v3, "http://"

    const-string v4, "http://["

    :try_start_0
    instance-of v5, v1, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/teleal/cling/model/Location;->b:Ljava/net/URI;

    if-eqz v5, :cond_0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Lorg/teleal/common/util/URIUtil;->b(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v4, v1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Lorg/teleal/common/util/URIUtil;->b(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "Address, port, and URI can not be converted to URL"

    invoke-static {v0, p0}, Lr81;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/teleal/cling/model/Location;

    iget-object v2, p0, Lorg/teleal/cling/model/Location;->a:Lorg/teleal/cling/model/NetworkAddress;

    iget-object v3, p1, Lorg/teleal/cling/model/Location;->a:Lorg/teleal/cling/model/NetworkAddress;

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/NetworkAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/teleal/cling/model/Location;->b:Ljava/net/URI;

    iget-object p1, p1, Lorg/teleal/cling/model/Location;->b:Ljava/net/URI;

    invoke-virtual {p0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/model/Location;->a:Lorg/teleal/cling/model/NetworkAddress;

    invoke-virtual {v0}, Lorg/teleal/cling/model/NetworkAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/teleal/cling/model/Location;->b:Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
