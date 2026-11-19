.class public Lorg/teleal/cling/model/NetworkAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/InetAddress;

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/NetworkAddress;->a:Ljava/net/InetAddress;

    iput p2, p0, Lorg/teleal/cling/model/NetworkAddress;->b:I

    iput-object p3, p0, Lorg/teleal/cling/model/NetworkAddress;->c:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/teleal/cling/model/NetworkAddress;

    iget v2, p0, Lorg/teleal/cling/model/NetworkAddress;->b:I

    iget v3, p1, Lorg/teleal/cling/model/NetworkAddress;->b:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lorg/teleal/cling/model/NetworkAddress;->a:Ljava/net/InetAddress;

    iget-object v3, p1, Lorg/teleal/cling/model/NetworkAddress;->a:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lorg/teleal/cling/model/NetworkAddress;->c:[B

    iget-object p1, p1, Lorg/teleal/cling/model/NetworkAddress;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/teleal/cling/model/NetworkAddress;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/teleal/cling/model/NetworkAddress;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/teleal/cling/model/NetworkAddress;->c:[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
