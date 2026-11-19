.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    }
.end annotation


# instance fields
.field public final b:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:Lorg/spongycastle/pqc/crypto/xmss/BDS;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)V
    .locals 10

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget v3, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->c:I

    iget-object v4, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget v5, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->b:I

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v1

    iget-object v6, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->c:[B

    if-eqz v6, :cond_1

    array-length v7, v6

    if-ne v7, v1, :cond_0

    iput-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->c:[B

    goto :goto_0

    :cond_0
    const-string p0, "size of secretKeySeed needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-array v7, v1, [B

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->c:[B

    :goto_0
    iget-object v7, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->d:[B

    if-eqz v7, :cond_3

    array-length v8, v7

    if-ne v8, v1, :cond_2

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->d:[B

    goto :goto_1

    :cond_2
    const-string p0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-array v7, v1, [B

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->d:[B

    :goto_1
    iget-object v7, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->e:[B

    if-eqz v7, :cond_5

    array-length v8, v7

    if-ne v8, v1, :cond_4

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->e:[B

    goto :goto_2

    :cond_4
    const-string p0, "size of publicSeed needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-array v8, v1, [B

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->e:[B

    :goto_2
    iget-object v8, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->f:[B

    if-eqz v8, :cond_7

    array-length v9, v8

    if-ne v9, v1, :cond_6

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->f:[B

    goto :goto_3

    :cond_6
    const-string p0, "size of root needs to be equal size of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->f:[B

    :goto_3
    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->g:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    if-eqz v1, :cond_8

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->g:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    return-void

    :cond_8
    iget p1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->b:I

    shl-int v1, v0, v5

    add-int/lit8 v1, v1, -0x2

    if-ge p1, v1, :cond_a

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    invoke-direct {v0, v4, v5, v3}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;II)V

    invoke-virtual {v0, v7, v6, v2}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->a([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    :goto_4
    iget v1, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    if-ge v1, p1, :cond_9

    invoke-virtual {v0, v7, v6, v2}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->b([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;->k:Z

    goto :goto_4

    :cond_9
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->g:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    return-void

    :cond_a
    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-direct {v1, v4, v5, v3}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;II)V

    iput p1, v1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    iput-boolean v0, v1, Lorg/spongycastle/pqc/crypto/xmss/BDS;->k:Z

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->g:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    return-void

    :cond_b
    const-string p0, "params == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a()[B
    .locals 7

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    add-int v2, v1, v0

    add-int v3, v2, v0

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->g:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    iget v5, v4, Lorg/spongycastle/pqc/crypto/xmss/BDS;->j:I

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->c:[B

    const/4 v6, 0x4

    invoke-static {v0, v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->d:[B

    invoke-static {v0, v5, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->e:[B

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->f:[B

    invoke-static {v0, p0, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->e([B[B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error serializing bds state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ln00;->o(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
