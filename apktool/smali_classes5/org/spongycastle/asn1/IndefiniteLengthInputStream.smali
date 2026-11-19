.class Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
.super Lorg/spongycastle/asn1/LimitedInputStream;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->f:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->g:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->d:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->e:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->k()Z

    return-void

    :cond_0
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->f:Z

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LimitedInputStream;->j()V

    :cond_0
    iget-boolean p0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->f:Z

    return p0
.end method

.method public final read()I
    .locals 3

    .line 69
    invoke-virtual {p0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 71
    iget v1, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->d:I

    .line 72
    iget v2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->e:I

    iput v2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->d:I

    .line 73
    iput v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->e:I

    return v1

    .line 74
    :cond_1
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public final read([BII)I
    .locals 3

    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->g:Z

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->f:Z

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    iget-object v1, p0, Lorg/spongycastle/asn1/LimitedInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, 0x0

    if-ltz p3, :cond_3

    iget v2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->d:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget v2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->e:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->d:I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->e:I

    if-ltz p1, :cond_2

    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_2
    invoke-static {}, Lmd;->e()V

    return v0

    :cond_3
    invoke-static {}, Lmd;->e()V

    return v0

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method
