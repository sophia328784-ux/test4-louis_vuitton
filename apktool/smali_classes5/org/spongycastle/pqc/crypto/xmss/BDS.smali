.class public final Lorg/spongycastle/pqc/crypto/xmss/BDS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final transient b:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

.field public final c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:I

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/TreeMap;

.field public final h:Ljava/util/Stack;

.field public final i:Ljava/util/TreeMap;

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/BDS;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->b:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->b:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    .line 90
    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->c:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->c:I

    .line 91
    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->e:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->e:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->f:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->g:Ljava/util/TreeMap;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->g:Ljava/util/TreeMap;

    .line 94
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->h:Ljava/util/Stack;

    .line 95
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->d:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->i:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->i:Ljava/util/TreeMap;

    .line 97
    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    .line 98
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->b([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    const/4 p0, 0x1

    .line 99
    iput-boolean p0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->k:Z

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->b:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iput p2, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->c:I

    iput p3, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->e:I

    if-gt p3, p2, :cond_1

    const/4 p1, 0x2

    if-lt p3, p1, :cond_1

    sub-int/2addr p2, p3

    rem-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->g:Ljava/util/TreeMap;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->h:Ljava/util/Stack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->d:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->d:Ljava/util/ArrayList;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;

    invoke-direct {v1, p3}, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->i:Ljava/util/TreeMap;

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->k:Z

    return-void

    :cond_1
    const-string p0, "illegal value for BDS parameter k"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 2

    .line 83
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    .line 84
    iget v1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->b:I

    .line 85
    iget p1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->c:I

    .line 86
    invoke-direct {p0, v0, v1, p1}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;II)V

    .line 87
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->a([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    return-void
.end method


# virtual methods
.method public final a([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-wide v2, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iget v4, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iput v4, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v2, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v6, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v4, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v2, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v2, v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    iget v5, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->c:I

    shl-int v7, v4, v5

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->h:Ljava/util/Stack;

    if-ge v3, v7, :cond_7

    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iget v9, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v9, v7, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v9, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v9, v7, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v3, v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    iget v9, v1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->f:I

    iput v9, v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->f:I

    iget v9, v1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->g:I

    iput v9, v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->g:I

    iget v1, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v1, v7, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {v1, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->b:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-object/from16 v9, p2

    invoke-virtual {v7, v9, v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->c([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v7, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d([B[B)V

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object v10

    new-instance v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v12}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v13, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v13, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v13, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v13, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v3, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    iget v13, v6, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->f:I

    iput v13, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iget v13, v6, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->g:I

    iput v13, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iget v6, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v6, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v6, v12}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    invoke-static {v7, v10, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->a(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v10

    new-instance v12, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v12}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v13, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v13, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v13, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v13, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v3, v12, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iget v2, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v2, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v2, v12}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    :goto_1
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v12, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    iget v13, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    if-ne v12, v13, :cond_6

    shl-int v12, v4, v13

    div-int v12, v3, v12

    int-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v12, v14

    if-ne v12, v4, :cond_0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v14, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->e:I

    const/4 v15, 0x3

    if-ne v12, v15, :cond_3

    sub-int v15, v5, v14

    if-ge v13, v15, :cond_2

    iget-object v15, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->d:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    iput-object v4, v15, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v4, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    iput v4, v15, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->d:I

    move-object/from16 v17, v1

    iget v1, v15, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->c:I

    if-ne v4, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v15, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->g:Z

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    const/4 v4, 0x3

    goto :goto_3

    :cond_2
    move-object/from16 v17, v1

    move v1, v4

    goto :goto_2

    :cond_3
    move-object/from16 v17, v1

    move v1, v4

    move v4, v15

    :goto_3
    if-lt v12, v4, :cond_5

    and-int/lit8 v4, v12, 0x1

    if-ne v4, v1, :cond_5

    sub-int v1, v5, v14

    if-lt v13, v1, :cond_5

    add-int/lit8 v1, v5, -0x2

    if-gt v13, v1, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->g:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v4, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v4, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v12, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v12, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v4, v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->e:I

    iput v4, v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    iget v4, v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->f:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    iput v4, v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iget v2, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v2, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {v7, v1, v10, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->b(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v1

    new-instance v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v4, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v1

    invoke-direct {v10, v4, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v4, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v4, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v12, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v12, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v4, v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    iget v4, v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->f:I

    iput v4, v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iget v2, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v2, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    move/from16 v4, v16

    move-object/from16 v1, v17

    goto/16 :goto_1

    :cond_6
    move-object/from16 v17, v1

    invoke-virtual {v8, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    return-void
.end method

.method public final b([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iget v6, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iget-boolean v7, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->k:Z

    if-nez v7, :cond_16

    iget v7, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    const/4 v8, 0x1

    iget v9, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->c:I

    shl-int v10, v8, v9

    add-int/lit8 v11, v10, -0x2

    if-gt v7, v11, :cond_15

    new-instance v11, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v11}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iput v6, v11, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v4, v11, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    new-instance v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v12, v11}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    new-instance v11, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v11}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v6, v11, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v4, v11, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    new-instance v13, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v13, v11}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_1

    shr-int v15, v7, v14

    and-int/2addr v15, v8

    if-nez v15, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iget v7, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    add-int/lit8 v15, v14, 0x1

    shr-int/2addr v7, v15

    and-int/2addr v7, v8

    iget-object v15, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->i:Ljava/util/TreeMap;

    move/from16 v16, v8

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->f:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    add-int/lit8 v7, v9, -0x1

    if-ge v14, v7, :cond_2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v11

    invoke-virtual {v15, v7, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->b:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v11, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->d:Ljava/util/ArrayList;

    move/from16 v19, v9

    iget v9, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->e:I

    if-nez v14, :cond_3

    new-instance v10, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v10}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iput v6, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v4, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v4, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    iput v4, v10, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    iget v4, v3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->f:I

    iput v4, v10, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->f:I

    iget v4, v3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->g:I

    iput v4, v10, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->g:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v3, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {v3, v10}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    invoke-virtual {v7, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->c([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v4

    invoke-virtual {v7, v4, v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d([B[B)V

    invoke-virtual {v7, v3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v6, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v6, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v13, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v13, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v6, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    iput v6, v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    iget v6, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->f:I

    iput v6, v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->f:I

    iget v6, v12, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->g:I

    iput v6, v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->g:I

    iget v6, v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v6, v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v6, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    invoke-static {v7, v4, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->a(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v8, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v13, v5

    :goto_2
    move/from16 v8, v16

    goto/16 :goto_d

    :cond_3
    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v5, v13, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v5, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v5, v13, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v5, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    add-int/lit8 v5, v14, -0x1

    iput v5, v4, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    iget v6, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    shr-int/2addr v6, v14

    iput v6, v4, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iget v6, v13, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v6, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v6, v4}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {v7, v4, v12, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->b(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v12, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    add-int/lit8 v12, v12, 0x1

    iget-object v4, v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v4

    invoke-direct {v6, v12, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    invoke-virtual {v8, v14, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v14, :cond_5

    sub-int v4, v19, v9

    if-ge v5, v4, :cond_4

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;

    iget-object v4, v4, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->g:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    sub-int v4, v19, v9

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_7

    iget v6, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    add-int/lit8 v6, v6, 0x1

    shl-int v8, v16, v5

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v6

    if-ge v8, v10, :cond_6

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;

    const/4 v12, 0x0

    iput-object v12, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v13, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->c:I

    iput v13, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->d:I

    iput v8, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->e:I

    move/from16 v8, v16

    iput-boolean v8, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->f:Z

    const/4 v13, 0x0

    iput-boolean v13, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->g:Z

    goto :goto_6

    :cond_6
    move/from16 v8, v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v8

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    :goto_7
    sub-int v4, v19, v9

    shr-int/2addr v4, v8

    if-ge v13, v4, :cond_14

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v12

    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;

    iget-boolean v8, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->g:Z

    if-nez v8, :cond_8

    iget-boolean v8, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->f:Z

    if-nez v8, :cond_9

    goto :goto_8

    :cond_9
    if-nez v5, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->a()I

    move-result v8

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->a()I

    move-result v10

    if-ge v8, v10, :cond_b

    :goto_9
    move-object v5, v6

    goto :goto_8

    :cond_b
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->a()I

    move-result v8

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->a()I

    move-result v10

    if-ne v8, v10, :cond_8

    iget v8, v6, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->e:I

    iget v10, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->e:I

    if-ge v8, v10, :cond_8

    goto :goto_9

    :cond_c
    if-eqz v5, :cond_13

    iget v4, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->c:I

    iget-boolean v6, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->g:Z

    if-nez v6, :cond_12

    iget-boolean v6, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->f:Z

    if-eqz v6, :cond_12

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iget v8, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v8, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v14, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v14, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v8, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->e:I

    iput v8, v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->f:I

    iput v10, v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->f:I

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->g:I

    iput v10, v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->g:I

    iget v10, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v10, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v10, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {v10, v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v14, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v14, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    move v15, v13

    iget-wide v12, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v12, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v8, v6, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->e:I

    move-object/from16 v18, v3

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v3, v6}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v14, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v12, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v8, v6, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    new-instance v8, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v8, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    invoke-virtual {v7, v2, v10}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->c([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v6

    invoke-virtual {v7, v6, v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->d([B[B)V

    invoke-virtual {v7, v10}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->b(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object v6

    invoke-static {v7, v6, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->a(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v3

    :goto_a
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->h:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    iget v12, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iget v13, v8, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->f:I

    iget v14, v8, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->e:I

    iget-wide v1, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iget v8, v8, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    if-nez v10, :cond_d

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v10, v10, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    move/from16 v20, v9

    iget v9, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    if-ne v10, v9, :cond_e

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v9, v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    if-eq v9, v4, :cond_e

    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v8, v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v1, v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v14, v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    iput v13, v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iput v12, v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v1, v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {v7, v2, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->b(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v6, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v2

    invoke-direct {v3, v6, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v6, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iput v6, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iget-wide v8, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iput-wide v8, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iget v6, v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    iget v6, v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->f:I

    iput v6, v2, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iget v1, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    iput v1, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v8, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v8, v2}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v9, v20

    goto/16 :goto_a

    :cond_d
    move/from16 v20, v9

    :cond_e
    iget-object v9, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    if-nez v9, :cond_f

    iput-object v3, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-object/from16 v21, v11

    goto :goto_b

    :cond_f
    iget v10, v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    move-object/from16 v21, v11

    iget v11, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    if-ne v10, v11, :cond_10

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v8, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput-wide v1, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v14, v6, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->e:I

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    iput v13, v6, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->f:I

    iput v12, v6, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v1, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    invoke-static {v7, v9, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->b(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v1

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget-object v2, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v2, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    iput-object v3, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    goto :goto_b

    :cond_10
    invoke-virtual {v6, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    iget-object v1, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    if-ne v1, v4, :cond_11

    const/4 v8, 0x1

    iput-boolean v8, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->g:Z

    goto :goto_c

    :cond_11
    const/4 v8, 0x1

    iget v1, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    iput v1, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->d:I

    iget v1, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->e:I

    add-int/2addr v1, v8

    iput v1, v5, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->e:I

    goto :goto_c

    :cond_12
    const-string v0, "finished or not initialized"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_13
    move-object/from16 v18, v3

    move/from16 v20, v9

    move-object/from16 v21, v11

    move v15, v13

    :goto_c
    add-int/lit8 v13, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v9, v20

    move-object/from16 v11, v21

    const/4 v8, 0x1

    :goto_d
    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_14
    iget v1, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    return-void

    :cond_15
    const-string v0, "index out of bounds"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "index already used"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
