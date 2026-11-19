.class public Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
.super Ljava/lang/Object;


# instance fields
.field validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    return-void
.end method


# virtual methods
.method public addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;

    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    iget-object p1, p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->hashCode()I

    move-result p0

    return p0
.end method

.method public intersectEmptyPermittedSubtree(I)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->intersectEmptyPermittedSubtree(I)V

    return-void
.end method

.method public intersectPermittedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->intersectPermittedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
