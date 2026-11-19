.class public Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    const-wide/16 v6, 0x0

    :goto_0
    cmp-long v8, v6, p2

    if-gez v8, :cond_8

    iget-object v8, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    iget v9, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->b:I

    shr-long v10, v6, v9

    const-wide/16 v12, 0x1

    shl-long v14, v12, v9

    sub-long/2addr v14, v12

    const-wide/16 v16, 0x0

    and-long v4, v6, v14

    long-to-int v4, v4

    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iput-wide v10, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v4, v5, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    move-wide/from16 v18, v12

    new-instance v12, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {v12, v5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    const/4 v5, 0x1

    shl-int v13, v5, v9

    add-int/lit8 v5, v13, -0x1

    if-ge v4, v5, :cond_2

    move/from16 v21, v4

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    const/16 v22, 0x0

    move-wide/from16 v23, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    if-eqz v4, :cond_0

    if-nez v21, :cond_1

    :cond_0
    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-direct {v4, v8, v2, v3, v12}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-direct {v8, v7, v2, v3, v12}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/BDS;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    invoke-virtual {v4, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    goto :goto_1

    :cond_2
    move-wide/from16 v23, v6

    :goto_1
    const/4 v4, 0x1

    :goto_2
    iget v6, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->c:I

    if-ge v4, v6, :cond_7

    and-long v6, v10, v14

    long-to-int v6, v6

    shr-long/2addr v10, v9

    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iput v4, v7, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v10, v7, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v6, v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    new-instance v8, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {v8, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    if-ge v6, v5, :cond_5

    cmp-long v6, v23, v16

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-long v6, v23, v18

    move v12, v5

    move-wide/from16 v20, v6

    int-to-double v5, v13

    move v7, v9

    move-wide/from16 v25, v10

    int-to-double v9, v4

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    rem-long v5, v20, v5

    cmp-long v5, v5, v16

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    if-nez v5, :cond_4

    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    iget-object v6, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v5, v6, v2, v3, v8}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v5, v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->b:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-direct {v10, v9, v2, v3, v8}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/BDS;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    invoke-virtual {v5, v6, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    goto :goto_4

    :cond_5
    :goto_3
    move v12, v5

    move v7, v9

    move-wide/from16 v25, v10

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v9, v7

    move v5, v12

    move-wide/from16 v10, v25

    goto :goto_2

    :cond_7
    add-long v6, v23, v18

    goto/16 :goto_0

    :cond_8
    return-void
.end method
