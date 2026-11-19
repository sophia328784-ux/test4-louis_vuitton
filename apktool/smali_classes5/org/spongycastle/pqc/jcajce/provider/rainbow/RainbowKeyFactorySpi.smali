.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->m()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    new-instance v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->r(Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->u(Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    iput-object v3, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [[B

    iput-object v5, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->d:[[B

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->d:[[B

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v5, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v5

    iput-object v5, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->e:[B

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    new-array v7, v7, [[B

    iput-object v7, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->f:[[B

    move v7, v1

    :goto_2
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->f:[[B

    invoke-virtual {v6, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v6, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v6

    iput-object v6, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->g:[B

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v6, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v6

    iput-object v6, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->h:[B

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    new-array v6, v6, [[[[B

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    new-array v7, v7, [[[[B

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    new-array v8, v8, [[[B

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    new-array v9, v9, [[B

    move v10, v1

    :goto_3
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v0, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v11, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    new-array v13, v13, [[[B

    aput-object v13, v6, v10

    move v13, v1

    :goto_4
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/asn1/ASN1Sequence;

    aget-object v15, v6, v10

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [[B

    aput-object v1, v15, v13

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-ge v1, v15, :cond_3

    aget-object v15, v6, v10

    aget-object v15, v15, v13

    invoke-virtual {v14, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v16

    aput-object v16, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    new-array v12, v12, [[[B

    aput-object v12, v7, v10

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    invoke-virtual {v1, v12}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Sequence;

    aget-object v14, v7, v10

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    new-array v15, v15, [[B

    aput-object v15, v14, v12

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    aget-object v15, v7, v10

    aget-object v15, v15, v12

    invoke-virtual {v13, v14}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v16

    aput-object v16, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v11, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    new-array v12, v12, [[B

    aput-object v12, v8, v10

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    aget-object v13, v8, v10

    invoke-virtual {v1, v12}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v14

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v11, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v1

    aput-object v1, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_8
    iget-object v0, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->h:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    new-array v1, v0, [Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iput-object v1, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->i:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_a

    new-instance v10, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iget-object v3, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->h:[B

    aget-byte v11, v3, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v12, v3, v4

    aget-object v3, v6, v1

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->f([[[B)[[[S

    move-result-object v13

    aget-object v3, v7, v1

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->f([[[B)[[[S

    move-result-object v14

    aget-object v3, v8, v1

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->d([[B)[[S

    move-result-object v15

    aget-object v3, v9, v1

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->b([B)[S

    move-result-object v16

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;-><init>(BB[[[S[[[S[[S[S)V

    iget-object v3, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->i:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aput-object v10, v3, v1

    move v1, v4

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :cond_a
    new-instance v3, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    iget-object v0, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->d:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->d([[B)[[S

    move-result-object v4

    iget-object v0, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->e:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->b([B)[S

    move-result-object v5

    iget-object v0, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->f:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->d([[B)[[S

    move-result-object v6

    iget-object v0, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->g:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->b([B)[S

    move-result-object v7

    iget-object v0, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->h:[B

    array-length v1, v0

    new-array v8, v1, [I

    const/4 v1, 0x0

    :goto_a
    array-length v9, v0

    if-ge v1, v9, :cond_b

    aget-byte v9, v0, v1

    and-int/lit16 v9, v9, 0xff

    aput v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    iget-object v9, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->i:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    invoke-direct/range {v3 .. v9}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-object v3
.end method

.method public final b(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 5

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->m()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {p1}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->r(Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->b:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->u(Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->r(Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->d:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->e:[[B

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->e:[[B

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->f:[[B

    move v2, v0

    :goto_2
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->f:[[B

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object p0

    iput-object p0, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->g:[B

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    new-instance p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    iget-object v0, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->d:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iget-object v1, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->e:[[B

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->d([[B)[[S

    move-result-object v1

    iget-object v2, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->f:[[B

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->d([[B)[[S

    move-result-object v2

    iget-object p1, p1, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->g:[B

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->b([B)[S

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    return-object p0
.end method

.method public final engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    check-cast p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;)V

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->n([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->i(Lorg/spongycastle/asn1/ASN1Primitive;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;->a(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lwp;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key specification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-static {p1, v0, v1}, Lfc;->n(Ljava/security/spec/KeySpec;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    check-cast p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;)V

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->i(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;->b(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lwp;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unknown key specification: "

    const-string v1, "."

    invoke-static {v0, p1, v1}, Lfc;->j(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7

    instance-of p0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    const-string v0, "."

    if-eqz p0, :cond_1

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_0
    const-class p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    iget-object v1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b:[[S

    iget-object v2, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->c:[S

    iget-object v3, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->d:[[S

    iget-object v4, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->e:[S

    iget-object v5, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->g:[I

    iget-object v6, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->f:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-object v0

    :cond_1
    instance-of p0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-eqz p0, :cond_5

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_2
    const-class p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    new-instance p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    iget p2, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->e:I

    iget-object v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->b:[[S

    iget-object v1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->c:[[S

    array-length v2, v1

    new-array v2, v2, [[S

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->d([S)[S

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->d:[S

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->d([S)[S

    move-result-object p1

    invoke-direct {p0, p2, v0, v2, p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;-><init>(I[[S[[S[S)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Unknown key specification: "

    invoke-static {p2, p1, v0}, Lpq0;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lfc;->m(Ljava/security/Key;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    instance-of p0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-nez p0, :cond_1

    instance-of p0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "Unsupported key type"

    invoke-static {p0}, Lwp;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method
