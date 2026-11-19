.class public Lorg/spongycastle/jce/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;
    .locals 9

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1d

    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    if-nez v0, :cond_1d

    sget-object v0, Lorg/spongycastle/asn1/x9/X962NamedCurves;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_2

    sget-object v2, Lorg/spongycastle/asn1/x9/X962NamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    sget-object v0, Lorg/spongycastle/asn1/sec/SECNamedCurves;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/spongycastle/asn1/sec/SECNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v0, :cond_4

    :goto_3
    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_5
    :goto_4
    if-nez v0, :cond_b

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    array-length v5, v2

    if-eq v3, v5, :cond_7

    aget-char v5, v2, v3

    const/16 v6, 0x61

    if-gt v6, v5, :cond_6

    const/16 v6, 0x7a

    if-lt v6, v5, :cond_6

    add-int/lit8 v5, v5, -0x20

    int-to-char v4, v5

    aput-char v4, v2, v3

    const/4 v4, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    :cond_8
    move-object v3, p0

    :goto_6
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_9

    sget-object v2, Lorg/spongycastle/asn1/sec/SECNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v0, :cond_a

    :cond_9
    move-object v0, v1

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_b
    :goto_7
    if-nez v0, :cond_d

    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_c

    sget-object v2, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    goto :goto_8

    :cond_c
    move-object v0, v1

    :cond_d
    :goto_8
    if-nez v0, :cond_10

    sget-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    sget-object v2, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v0, :cond_f

    :goto_9
    move-object v0, v1

    goto :goto_a

    :cond_f
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_10
    :goto_a
    if-nez v0, :cond_13

    sget-object v0, Lorg/spongycastle/asn1/gm/GMNamedCurves;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_11

    :goto_b
    move-object v0, v1

    goto :goto_c

    :cond_11
    sget-object v2, Lorg/spongycastle/asn1/gm/GMNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v0, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_13
    :goto_c
    if-nez v0, :cond_1d

    :try_start_1
    new-instance v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/spongycastle/asn1/x9/X962NamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    goto :goto_d

    :cond_14
    move-object v3, v1

    :goto_d
    if-nez v3, :cond_16

    sget-object v3, Lorg/spongycastle/asn1/sec/SECNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v3, :cond_15

    move-object v3, v1

    goto :goto_e

    :cond_15
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    :cond_16
    :goto_e
    if-nez v3, :cond_18

    sget-object v3, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    goto :goto_f

    :cond_17
    move-object v3, v1

    :cond_18
    :goto_f
    if-nez v3, :cond_1a

    sget-object v3, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v3, :cond_19

    move-object v3, v1

    goto :goto_10

    :cond_19
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    :cond_1a
    :goto_10
    if-nez v3, :cond_1c

    sget-object v3, Lorg/spongycastle/asn1/gm/GMNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez v2, :cond_1b

    move-object v0, v1

    goto :goto_11

    :cond_1b
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->b()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :cond_1c
    move-object v0, v3

    :catch_1
    :cond_1d
    :goto_11
    if-nez v0, :cond_1e

    return-object v1

    :cond_1e
    new-instance v2, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    iget-object v4, v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->c:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v1, v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->d:Lorg/spongycastle/asn1/x9/X9ECPoint;

    monitor-enter v1

    :try_start_2
    iget-object v3, v1, Lorg/spongycastle/asn1/x9/X9ECPoint;->d:Lorg/spongycastle/math/ec/ECPoint;

    if-nez v3, :cond_1f

    iget-object v3, v1, Lorg/spongycastle/asn1/x9/X9ECPoint;->c:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v5, v1, Lorg/spongycastle/asn1/x9/X9ECPoint;->b:Lorg/spongycastle/asn1/DEROctetString;

    iget-object v5, v5, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECCurve;->d([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, v1, Lorg/spongycastle/asn1/x9/X9ECPoint;->d:Lorg/spongycastle/math/ec/ECPoint;

    goto :goto_12

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_13

    :cond_1f
    :goto_12
    iget-object v5, v1, Lorg/spongycastle/asn1/x9/X9ECPoint;->d:Lorg/spongycastle/math/ec/ECPoint;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-object v6, v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->e:Ljava/math/BigInteger;

    iget-object v7, v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->f:Ljava/math/BigInteger;

    iget-object v8, v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:[B

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2

    :goto_13
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
