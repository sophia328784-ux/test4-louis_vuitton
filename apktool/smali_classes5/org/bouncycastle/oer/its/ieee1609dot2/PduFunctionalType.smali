.class public Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static final MAX:Ljava/math/BigInteger;

.field public static final iso21177ExtendedAuth:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

.field public static final tlsHandshake:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;


# instance fields
.field private final functionalType:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0xff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->MAX:Ljava/math/BigInteger;

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->tlsHandshake:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->iso21177ExtendedAuth:Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 10
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->assertValue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->functionalType:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 12
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method private static assertValue(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_0

    return-object p0

    :cond_0
    const-string p0, "value exceeds "

    invoke-static {v0, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string p0, "value less than 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFunctionalType()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->functionalType:Ljava/math/BigInteger;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PduFunctionalType;->functionalType:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
