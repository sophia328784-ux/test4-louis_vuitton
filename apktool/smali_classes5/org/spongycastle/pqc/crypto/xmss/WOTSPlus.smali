.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

.field public final b:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->c:I

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->b:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v1, v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;-><init>(ILorg/spongycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->c:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d:[B

    return-void
.end method


# virtual methods
.method public final a([BILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v1, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->c:I

    array-length v2, p1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_5

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->a()[B

    iget v0, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->d:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-gt p2, v0, :cond_4

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a([BILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object p1

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iget v4, p3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v4, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v4, p3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v4, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v4, p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->e:I

    iput v4, v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    iget p3, p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->f:I

    iput p3, v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->f:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->g:I

    const/4 p2, 0x0

    iput p2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {p3, v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d:[B

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->a()[B

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v5, v0, v4}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a([B[B)[B

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iget v6, p3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v6, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v6, p3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v6, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v6, p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->e:I

    iput v6, v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    iget v6, p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->f:I

    iput v6, v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->f:I

    iget p3, p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->g:I

    iput p3, v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->g:I

    iput v2, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {p3, v4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d:[B

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->a()[B

    move-result-object p3

    invoke-virtual {v5, p0, p3}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a([B[B)[B

    move-result-object p0

    new-array p3, v1, [B

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v4, p1, v2

    aget-byte v6, p0, v2

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p0, v0

    iget p1, v5, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b:I

    if-ne p0, p1, :cond_3

    if-ne v1, p1, :cond_2

    invoke-virtual {v5, p2, v0, p3}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b(I[B[B)[B

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "wrong in length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_3
    const-string p0, "wrong key length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_4
    const-string p0, "max chain length must not be greater than w"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_5
    const-string p0, "startHash needs to be "

    const-string p1, "bytes"

    invoke-static {v1, p0, p1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3
.end method

.method public final b(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v1, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->e:I

    new-array v2, v1, [[B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iget v5, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v5, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v5, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v5, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v5, p1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->e:I

    iput v5, v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    iput v3, v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->f:I

    iget v5, p1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->g:I

    iput v5, v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->g:I

    iget p1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput p1, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance p1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {p1, v4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    if-ltz v3, :cond_0

    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->c:[B

    int-to-long v5, v3

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->g(JI)[B

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v6, v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a([B[B)[B

    move-result-object v4

    iget v5, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->d:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5, p1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a([BILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "index out of bounds"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    return-object p0
.end method

.method public final c([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B
    .locals 3

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iget v1, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v1, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v1, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v1, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget p2, p2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->e:I

    iput p2, v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    new-instance p2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {p2, v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->a()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final d([B[B)V
    .locals 2

    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->c:I

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->c:[B

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d:[B

    return-void

    :cond_0
    const-string p0, "size of publicSeed needs to be equal to size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "publicSeed == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "size of secretKeySeed needs to be equal to size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
