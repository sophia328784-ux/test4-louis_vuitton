.class final Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/spongycastle/crypto/Digest;

.field public final b:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a:Lorg/spongycastle/crypto/Digest;

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b:I

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3

    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b(I[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "wrong address length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "wrong key length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2
.end method

.method public final b(I[B[B)[B
    .locals 2

    int-to-long v0, p1

    iget p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->b:I

    invoke-static {v0, v1, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->g(JI)[B

    move-result-object v0

    array-length v1, v0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->a:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, v1, v0}, Lorg/spongycastle/crypto/Digest;->a(I[B)V

    array-length v0, p2

    invoke-interface {p0, v0, p2}, Lorg/spongycastle/crypto/Digest;->a(I[B)V

    array-length p2, p3

    invoke-interface {p0, p2, p3}, Lorg/spongycastle/crypto/Digest;->a(I[B)V

    new-array p2, p1, [B

    instance-of p3, p0, Lorg/spongycastle/crypto/Xof;

    if-eqz p3, :cond_0

    check-cast p0, Lorg/spongycastle/crypto/Xof;

    invoke-interface {p0, p2, p1}, Lorg/spongycastle/crypto/Xof;->doFinal([BI)I

    return-object p2

    :cond_0
    invoke-interface {p0, p2}, Lorg/spongycastle/crypto/Digest;->b([B)I

    return-object p2
.end method
