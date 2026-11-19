.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;


# static fields
.field public static INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;-><init>()V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x35a4e901

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;-><init>(J)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const v2, 0x35a4e901

    if-ne v1, v2, :cond_1

    sget-object p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    const-string v1, " is not unknown value of 900000001"

    const-string v2, "value "

    invoke-static {v2, p0, v1}, Laz;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method
