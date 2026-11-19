.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(IILorg/spongycastle/crypto/Digest;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->b:I

    iput p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->c:I

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt p1, v1, :cond_2

    rem-int v1, p1, p2

    if-nez v1, :cond_1

    div-int v1, p1, p2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    invoke-direct {v0, v1, p3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    iget-object p0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object p3, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget-object p3, p3, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->b:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v2

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->d:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->e:I

    sget-object p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->b:Ljava/util/Map;

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    return-void

    :cond_0
    const-string p0, "height / layers must be greater than 1"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "layers must divide totalHeight without remainder"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p0, "totalHeight must be > 1"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2
.end method
