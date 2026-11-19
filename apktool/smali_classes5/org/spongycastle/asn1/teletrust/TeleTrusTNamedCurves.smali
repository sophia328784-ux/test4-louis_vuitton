.class public Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;

.field public static final c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$1;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$2;

    invoke-direct {v1}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v2, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$3;

    invoke-direct {v2}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v3, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$4;

    invoke-direct {v3}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v4, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$5;

    invoke-direct {v4}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v5, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$6;

    invoke-direct {v5}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v6, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$7;

    invoke-direct {v6}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v7, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$8;

    invoke-direct {v7}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v8, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$9;

    invoke-direct {v8}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v9, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$10;

    invoke-direct {v9}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v10, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$11;

    invoke-direct {v10}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v11, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$12;

    invoke-direct {v11}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v12, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$13;

    invoke-direct {v12}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v13, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves$14;

    invoke-direct {v13}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a:Ljava/util/Hashtable;

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->b:Ljava/util/Hashtable;

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->c:Ljava/util/Hashtable;

    const-string v14, "brainpoolp160r1"

    sget-object v15, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->a:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v14, v15, v0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp160t1"

    sget-object v14, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v14, v1}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp192r1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp192t1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->d:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp224r1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->e:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v4}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp224t1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->f:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v5}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp256r1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->g:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v6}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp256t1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->h:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v7}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp320r1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->i:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v8}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp320t1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->j:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v9}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp384r1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->k:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v10}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp384t1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v11}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp512r1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->m:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v12}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "brainpoolp512t1"

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->n:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v13}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1

    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
