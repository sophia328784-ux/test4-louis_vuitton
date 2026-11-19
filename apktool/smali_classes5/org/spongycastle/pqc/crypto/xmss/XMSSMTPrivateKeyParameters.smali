.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;
    }
.end annotation


# instance fields
.field public final b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

.field public final c:J

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)V
    .locals 9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    const/4 v0, 0x0

    if-eqz v2, :cond_a

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v1

    iget-wide v3, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->b:J

    iput-wide v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->c:J

    iget-object v6, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->c:[B

    if-eqz v6, :cond_1

    array-length v5, v6

    if-ne v5, v1, :cond_0

    iput-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->d:[B

    goto :goto_0

    :cond_0
    const-string p0, "size of secretKeySeed needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v5, v1, [B

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->d:[B

    :goto_0
    iget-object v5, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->d:[B

    if-eqz v5, :cond_3

    array-length v7, v5

    if-ne v7, v1, :cond_2

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->e:[B

    goto :goto_1

    :cond_2
    const-string p0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v5, v1, [B

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->e:[B

    :goto_1
    iget-object v5, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->e:[B

    if-eqz v5, :cond_5

    array-length v7, v5

    if-ne v7, v1, :cond_4

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->f:[B

    goto :goto_2

    :cond_4
    const-string p0, "size of publicSeed needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-array v7, v1, [B

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->f:[B

    :goto_2
    iget-object v7, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->f:[B

    if-eqz v7, :cond_7

    array-length v8, v7

    if-ne v8, v1, :cond_6

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->g:[B

    goto :goto_3

    :cond_6
    const-string p0, "size of root needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->g:[B

    :goto_3
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->g:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->h:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    return-void

    :cond_8
    iget v0, v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->b:I

    invoke-static {v0, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->f(IJ)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    iget-wide v3, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->b:J

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->h:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    return-void

    :cond_9
    new-instance p1, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-direct {p1}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->h:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    return-void

    :cond_a
    const-string p0, "params == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()[B
    .locals 7

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v1

    iget v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->b:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int v2, v0, v1

    add-int v3, v2, v1

    add-int v4, v3, v1

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-wide v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->c:J

    invoke-static {v5, v6, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->g(JI)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->d:[B

    invoke-static {v1, v5, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->e:[B

    invoke-static {v1, v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->f:[B

    invoke-static {v1, v0, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->g:[B

    invoke-static {v1, v0, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->h:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, p0}, Lorg/spongycastle/util/Arrays;->e([B[B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "error serializing bds state"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
