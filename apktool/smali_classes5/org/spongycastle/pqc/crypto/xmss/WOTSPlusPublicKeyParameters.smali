.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "publicKey byte array == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v3

    :cond_1
    array-length v1, p2

    iget v2, p1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->e:I

    if-ne v1, v2, :cond_4

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    array-length v1, v1

    iget v2, p1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->c:I

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "wrong publicKey format"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->c([[B)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->a:[[B

    return-void

    :cond_4
    const-string p0, "wrong publicKey size"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v3
.end method
