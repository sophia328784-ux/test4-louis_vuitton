.class public Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
.super Lorg/bouncycastle/asn1/ASN1Integer;


# static fields
.field public static final challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

.field public static final encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    new-instance v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-void
.end method

.method public static valueOf(I)Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    return-object p0

    :cond_1
    const-string v0, "unknown value: "

    invoke-static {p0, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
