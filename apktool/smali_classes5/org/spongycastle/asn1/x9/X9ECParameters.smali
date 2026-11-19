.class public Lorg/spongycastle/asn1/x9/X9ECParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public final b:Lorg/spongycastle/asn1/x9/X9FieldID;

.field public final c:Lorg/spongycastle/math/ec/ECCurve;

.field public final d:Lorg/spongycastle/asn1/x9/X9ECPoint;

.field public final e:Ljava/math/BigInteger;

.field public final f:Ljava/math/BigInteger;

.field public final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 119
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->c:Lorg/spongycastle/math/ec/ECCurve;

    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->d:Lorg/spongycastle/asn1/x9/X9ECPoint;

    iput-object p3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->e:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->f:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:[B

    iget-object p2, p1, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {p2}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    new-instance p1, Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-interface {p2}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->b:Lorg/spongycastle/asn1/x9/X9FieldID;

    return-void

    :cond_0
    iget-object p1, p1, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {p1}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result p3

    const/4 p5, 0x0

    if-le p3, p4, :cond_3

    invoke-interface {p1}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p3

    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->c:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    instance-of p1, p1, Lorg/spongycastle/math/field/PolynomialExtensionField;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/spongycastle/math/field/PolynomialExtensionField;

    invoke-interface {p2}, Lorg/spongycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/spongycastle/math/field/Polynomial;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/spongycastle/asn1/x9/X9FieldID;

    aget p3, p1, p3

    aget p1, p1, p4

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(II)V

    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->b:Lorg/spongycastle/asn1/x9/X9FieldID;

    return-void

    :cond_1
    array-length p2, p1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    new-instance p2, Lorg/spongycastle/asn1/x9/X9FieldID;

    const/4 p5, 0x4

    aget p5, p1, p5

    aget p4, p1, p4

    aget p3, p1, p3

    aget p1, p1, v0

    invoke-direct {p2, p5, p4, p3, p1}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->b:Lorg/spongycastle/asn1/x9/X9FieldID;

    return-void

    :cond_2
    const-string p0, "Only trinomial and pentomial curves are supported"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw p5

    :cond_3
    const-string p0, "\'curve\' is of an unsupported type"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw p5
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 122
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 120
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    move-object v0, p2

    .line 121
    new-instance p2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-direct {p2, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method


# virtual methods
.method public final toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->b:Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->c:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:[B

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->d:Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->e:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->f:Ljava/math/BigInteger;

    if-eqz p0, :cond_0

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
