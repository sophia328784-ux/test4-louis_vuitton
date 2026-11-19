.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/crypto/Digest;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_3

    if-eqz p2, :cond_2

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-direct {v3, p2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;)V

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->b:I

    move p2, v1

    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->b:I

    if-gt p2, v2, :cond_1

    sub-int/2addr v2, p2

    rem-int/2addr v2, v1

    if-nez v2, :cond_0

    iput p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->c:I

    iget-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object p2, p2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget-object p2, p2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->b:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->d:I

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->e:I

    sget-object v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->b:Ljava/util/Map;

    invoke-static {p2, v0, v1, p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->a(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "should never happen..."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "digest == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "height must be >= 2"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->a:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->c:I

    return p0
.end method
