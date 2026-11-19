.class public Lorg/spongycastle/asn1/x9/X9ECPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field public final b:Lorg/spongycastle/asn1/DEROctetString;

.field public final c:Lorg/spongycastle/math/ec/ECCurve;

.field public d:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 94
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;[B)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->c:Lorg/spongycastle/math/ec/ECCurve;

    .line 93
    new-instance p1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->b:Lorg/spongycastle/asn1/DEROctetString;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;Z)V
    .locals 5

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->d:Lorg/spongycastle/math/ec/ECPoint;

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array p1, v2, [B

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iget-object v1, p1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->e()[B

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    array-length p2, v1

    add-int/2addr p2, v2

    new-array p2, p2, [B

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    int-to-byte p1, p1

    aput-byte p1, p2, v3

    array-length p1, v1

    invoke-static {v1, v3, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->e()[B

    move-result-object p1

    array-length p2, v1

    array-length v4, p1

    add-int/2addr p2, v4

    add-int/2addr p2, v2

    new-array p2, p2, [B

    const/4 v4, 0x4

    aput-byte v4, p2, v3

    array-length v4, v1

    invoke-static {v1, v3, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :goto_2
    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->b:Lorg/spongycastle/asn1/DEROctetString;

    return-void
.end method


# virtual methods
.method public final toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->b:Lorg/spongycastle/asn1/DEROctetString;

    return-object p0
.end method
