.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final MAXITS:I = 0x10000


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    return-void
.end method

.method private genSignature([B)[B
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v4

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v7

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    new-array v11, v11, [B

    invoke-static {v9, v10, v2, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    iput-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    new-array v9, v1, [S

    new-array v10, v3, [S

    new-array v11, v4, [S

    new-array v12, v4, [S

    const/4 v13, 0x2

    new-array v14, v13, [I

    const/4 v15, 0x1

    aput v3, v14, v15

    aput v4, v14, v5

    move/from16 p1, v15

    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[S

    move/from16 v16, v5

    new-array v5, v13, [I

    aput v4, v5, p1

    aput v4, v5, v16

    invoke-static {v15, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_salt()I

    move-result v13

    new-array v13, v13, [B

    move/from16 v17, v7

    new-array v7, v6, [S

    move-object/from16 v18, v5

    new-array v5, v3, [S

    const/16 v19, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move/from16 v5, v16

    move-object/from16 v11, v19

    :goto_0
    const/high16 v12, 0x10000

    if-nez v11, :cond_4

    if-ge v5, v12, :cond_4

    new-array v11, v1, [B

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v12, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    move/from16 v12, v16

    :goto_1
    move/from16 v23, v5

    if-ge v12, v1, :cond_0

    aget-byte v5, v11, v12

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v9, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v23

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    new-array v11, v5, [I

    aput v3, v11, p1

    aput v3, v11, v16

    invoke-static {v15, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    move/from16 v11, v16

    :goto_2
    if-ge v11, v1, :cond_3

    move/from16 v12, v16

    :goto_3
    move/from16 v24, v11

    if-ge v12, v3, :cond_2

    move/from16 v11, v16

    :goto_4
    if-ge v11, v3, :cond_1

    move/from16 v25, v11

    iget-object v11, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    aget-object v11, v11, v12

    aget-object v11, v11, v24

    aget-short v11, v11, v25

    move/from16 v26, v12

    aget-short v12, v9, v24

    invoke-static {v11, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v11

    aget-object v12, v5, v26

    move-object/from16 v27, v12

    aget-short v12, v27, v25

    invoke-static {v12, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v11

    aput-short v11, v27, v25

    add-int/lit8 v11, v25, 0x1

    move/from16 v12, v26

    goto :goto_4

    :cond_1
    move/from16 v26, v12

    add-int/lit8 v12, v26, 0x1

    move/from16 v11, v24

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v24, 0x1

    goto :goto_2

    :cond_3
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v11, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->inverse([[S)[[S

    move-result-object v11

    add-int/lit8 v5, v23, 0x1

    goto :goto_0

    :cond_4
    move/from16 v23, v5

    move/from16 v5, v16

    :goto_5
    if-ge v5, v3, :cond_5

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move/from16 v25, v5

    iget-object v5, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    aget-object v5, v5, v25

    invoke-virtual {v12, v5, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v5

    aput-short v5, v10, v25

    add-int/lit8 v5, v25, 0x1

    const/high16 v12, 0x10000

    goto :goto_5

    :cond_5
    move/from16 v5, v16

    :goto_6
    if-ge v5, v1, :cond_9

    move/from16 v12, v16

    :goto_7
    move/from16 v25, v5

    if-ge v12, v4, :cond_8

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move/from16 v26, v12

    iget-object v12, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    aget-object v12, v12, v26

    invoke-virtual {v5, v12, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v5

    aput-short v5, v21, v26

    move/from16 v5, v16

    :goto_8
    if-ge v5, v3, :cond_6

    iget-object v12, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    aget-object v12, v12, v26

    aget-object v12, v12, v25

    aget-short v12, v12, v5

    move/from16 v27, v5

    aget-short v5, v9, v25

    invoke-static {v12, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aget-object v12, v14, v26

    move-object/from16 v28, v12

    aget-short v12, v28, v27

    invoke-static {v12, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v28, v27

    add-int/lit8 v5, v27, 0x1

    goto :goto_8

    :cond_6
    move/from16 v5, v16

    :goto_9
    if-ge v5, v4, :cond_7

    iget-object v12, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    aget-object v12, v12, v26

    aget-object v12, v12, v25

    aget-short v12, v12, v5

    move/from16 v27, v5

    aget-short v5, v9, v25

    invoke-static {v12, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aget-object v12, v18, v26

    move-object/from16 v28, v12

    aget-short v12, v28, v27

    invoke-static {v12, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v28, v27

    add-int/lit8 v5, v27, 0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v12, v26, 0x1

    move/from16 v5, v25

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v25, 0x1

    goto :goto_6

    :cond_9
    new-array v5, v6, [B

    move-object/from16 v12, v20

    move/from16 v20, v1

    move-object v1, v12

    move/from16 v12, v23

    move-object/from16 v23, v19

    :goto_a
    move-object/from16 v25, v9

    if-nez v23, :cond_e

    const/high16 v9, 0x10000

    if-ge v12, v9, :cond_e

    const/4 v9, 0x2

    new-array v1, v9, [I

    aput v4, v1, p1

    aput v4, v1, v16

    invoke-static {v15, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v9, v2, v13, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v9

    move-object/from16 v26, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v27, v5

    iget-object v5, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    move-object/from16 v28, v15

    invoke-static {v9, v3, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v15

    invoke-virtual {v2, v5, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v2

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-static {v9, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v15

    invoke-virtual {v5, v15, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    move/from16 v5, v16

    invoke-static {v2, v5, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-static {v7, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v5, v11, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v2

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v5, v14, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v5

    const/4 v9, 0x0

    :goto_b
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    if-ge v9, v4, :cond_a

    move/from16 v23, v9

    iget-object v9, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    aget-object v9, v9, v23

    invoke-virtual {v15, v9, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v9

    aput-short v9, v22, v23

    add-int/lit8 v9, v23, 0x1

    goto :goto_b

    :cond_a
    move-object/from16 v9, v22

    invoke-virtual {v15, v5, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    invoke-virtual {v15, v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-static {v7, v3, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v2

    invoke-virtual {v15, v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_d

    const/4 v15, 0x0

    :goto_d
    move/from16 v23, v5

    if-ge v15, v4, :cond_c

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_b

    move/from16 v29, v5

    iget-object v5, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    aget-object v5, v5, v15

    aget-object v5, v5, v23

    aget-short v5, v5, v29

    move/from16 v30, v6

    aget-short v6, v22, v23

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aget-object v6, v1, v15

    move-object/from16 v31, v6

    aget-short v6, v31, v29

    invoke-static {v6, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v31, v29

    add-int/lit8 v5, v29, 0x1

    move/from16 v6, v30

    goto :goto_e

    :cond_b
    move/from16 v30, v6

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v23

    goto :goto_d

    :cond_c
    move/from16 v30, v6

    add-int/lit8 v5, v23, 0x1

    goto :goto_c

    :cond_d
    move/from16 v30, v6

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v6, v18

    invoke-virtual {v5, v1, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v5, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v23

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v5, v27

    move-object/from16 v15, v28

    move/from16 v6, v30

    const/16 v16, 0x0

    move-object/from16 v22, v9

    move-object/from16 v9, v25

    goto/16 :goto_a

    :cond_e
    if-nez v23, :cond_f

    new-array v2, v4, [S

    goto :goto_f

    :cond_f
    move-object/from16 v2, v23

    :goto_f
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-virtual {v5, v6, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v7, v25

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-virtual {v6, v7, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, v8, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-virtual {v6, v7, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v6

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v0

    move/from16 v1, v17

    invoke-static {v5, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    move/from16 v5, v20

    const/4 v6, 0x0

    invoke-static {v0, v6, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    invoke-static {v2, v6, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 v9, 0x10000

    if-eq v12, v9, :cond_10

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->convertArray([S)[B

    move-result-object v0

    invoke-static {v0, v13}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_10
    const-string v0, "unable to generate signature - LES not solvable"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v19
.end method

.method private makeMessageRepresentative([B)[S
    .locals 4

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v0, p0, [S

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p0, :cond_0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->genSignature([B)[B

    move-result-object p0

    return-object p0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_1

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    array-length v4, p2

    invoke-static {p2, v1, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    new-array p1, p1, [B

    invoke-static {v5, v0, v4, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object p1

    invoke-static {p2, v3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->convertArray([B)[S

    move-result-object p2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner$1;->$SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version:[I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "No valid version. Please choose one of the following: classic, circumzenithal, compressed"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v3

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v2, p0, p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->publicMap_cyclic(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v2, p0, p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->publicMap(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S

    move-result-object p0

    :goto_1
    invoke-static {p1, p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([S[S)Z

    move-result p0

    return p0
.end method
