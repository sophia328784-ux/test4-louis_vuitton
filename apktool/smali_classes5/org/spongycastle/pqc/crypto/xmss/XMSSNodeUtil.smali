.class abstract Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .locals 13

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->e:I

    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->a:[[B

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->c([[B)[[B

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, p1, v3

    invoke-direct {v4, v2, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p1}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v3, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v3, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v3, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v3, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v3, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->e:I

    iput v3, p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    iput v2, p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iget v3, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->g:I

    iput v3, p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iget p2, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput p2, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {p2, p1}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    :goto_1
    const/4 p1, 0x1

    if-le v0, p1, :cond_3

    move v3, v2

    :goto_2
    div-int/lit8 v4, v0, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iget v8, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->f:I

    iget v9, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->e:I

    iget-wide v10, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iget v12, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    if-ge v3, v6, :cond_1

    new-instance p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iput v12, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v10, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v9, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    iput v8, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iput v3, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iput v7, p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v4, p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    mul-int/lit8 p2, v3, 0x2

    aget-object v5, v1, p2

    add-int/2addr p2, p1

    aget-object p2, v1, p2

    invoke-static {p0, v5, p2, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->b(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p2

    aput-object p2, v1, v3

    add-int/lit8 v3, v3, 0x1

    move-object p2, v4

    goto :goto_2

    :cond_1
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, p1, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p1, v3

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v1, v3

    aput-object v3, v1, p1

    :cond_2
    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    new-instance p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p1}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iput v12, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v10, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v9, p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iget p2, p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->g:I

    iput p2, p1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iput v7, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {p2, p1}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_1

    :cond_3
    aget-object p0, v1, v2

    return-object p0
.end method

.method public static b(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v1, :cond_c

    iget v5, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    if-eqz v2, :cond_b

    iget v6, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    if-ne v5, v6, :cond_a

    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d:[B

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-static {v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v6

    instance-of v8, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    check-cast v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v8, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v8}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v10, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v10, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v10, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->e:I

    iput v10, v8, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->f:I

    iput v10, v8, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->g:I

    iput v3, v8, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iput v9, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v3, v8}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_0

    :cond_0
    instance-of v8, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v8, :cond_1

    check-cast v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v8, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v8}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v10, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v10, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v10, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->e:I

    iput v10, v8, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->f:I

    iput v3, v8, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iput v9, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v3, v8}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    :cond_1
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a()[B

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a([B[B)[B

    move-result-object v8

    instance-of v10, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    check-cast v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v10, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v12, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v12, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v12, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v12, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v12, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->e:I

    iput v12, v10, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    iget v12, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->f:I

    iput v12, v10, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->g:I

    iput v3, v10, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iput v11, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v3, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_1

    :cond_2
    instance-of v10, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v10, :cond_3

    check-cast v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v10, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v12, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v12, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v12, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v12, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v12, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->e:I

    iput v12, v10, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->f:I

    iput v3, v10, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iput v11, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v3, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    :cond_3
    :goto_1
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a()[B

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a([B[B)[B

    move-result-object v10

    instance-of v12, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v13, 0x2

    if-eqz v12, :cond_4

    check-cast v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v12}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v14, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v14, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v14, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v14, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v14, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->e:I

    iput v14, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    iget v14, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->f:I

    iput v14, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->g:I

    iput v3, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iput v13, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v3, v12}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_2

    :cond_4
    instance-of v12, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v12, :cond_5

    check-cast v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v12, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v12}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v14, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v14, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v14, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v14, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v14, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->e:I

    iput v14, v12, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->f:I

    iput v3, v12, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iput v13, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v3, v12}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a()[B

    move-result-object v3

    invoke-virtual {v7, v6, v3}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a([B[B)[B

    move-result-object v3

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->c:I

    mul-int/lit8 v6, v0, 0x2

    new-array v12, v6, [B

    move v14, v9

    :goto_3
    if-ge v14, v0, :cond_6

    iget-object v15, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    invoke-static {v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v15

    aget-byte v15, v15, v14

    aget-byte v16, v10, v14

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v9, v0, :cond_7

    add-int v1, v9, v0

    iget-object v10, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    invoke-static {v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v10

    aget-byte v10, v10, v9

    aget-byte v14, v3, v9

    xor-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v12, v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    array-length v0, v8

    iget v1, v7, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b:I

    if-ne v0, v1, :cond_9

    mul-int/2addr v1, v13

    if-ne v6, v1, :cond_8

    invoke-virtual {v7, v11, v8, v12}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b(I[B[B)[B

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-direct {v1, v5, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    return-object v1

    :cond_8
    const-string v0, "wrong in length"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_9
    const-string v0, "wrong key length"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_a
    const-string v0, "height of both nodes must be equal"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_b
    const-string v0, "right == null"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v4

    :cond_c
    const-string v0, "left == null"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v4
.end method
