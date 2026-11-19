.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;
    }
.end annotation


# instance fields
.field public final b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v0

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->b:[B

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ne v3, v0, :cond_0

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->c:[B

    goto :goto_0

    :cond_0
    const-string p0, "length of root must be equal to length of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->c:[B

    :goto_0
    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->c:[B

    if-eqz p1, :cond_3

    array-length v2, p1

    if-ne v2, v0, :cond_2

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->d:[B

    return-void

    :cond_2
    const-string p0, "length of publicSeed must be equal to length of digest"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->d:[B

    return-void

    :cond_4
    const-string p0, "params == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()[B
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v0

    add-int v1, v0, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->c:[B

    invoke-static {v1, v3, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->d:[B

    invoke-static {v1, p0, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->d([B[BI)V

    return-object v1
.end method
