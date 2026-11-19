.class public final Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field public static final b:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v5, 0x14

    const/4 v6, 0x2

    const-string v1, "SHA-256"

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0x43

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H20_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x14

    const/4 v8, 0x4

    const-string v3, "SHA-256"

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/16 v6, 0x43

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H20_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x28

    const/4 v8, 0x2

    const-string v3, "SHA-256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H40_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v3, "SHA-256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H40_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x4

    const-string v3, "SHA-256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H40_D8"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x3c

    const/16 v8, 0x8

    const-string v3, "SHA-256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H60_D3"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x6

    const-string v3, "SHA-256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H60_D6"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v8, 0xc

    const-string v3, "SHA-256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-256_W16_H60_D12"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x14

    const/4 v8, 0x2

    const-string v3, "SHA2-512"

    const/16 v4, 0x40

    const/16 v6, 0x83

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H20_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x4

    const-string v3, "SHA2-512"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H20_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x28

    const/4 v8, 0x2

    const-string v3, "SHA2-512"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H40_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x4

    const-string v3, "SHA2-512"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H40_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v8, 0x8

    const-string v3, "SHA2-512"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H40_D8"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x3c

    const/4 v8, 0x3

    const-string v3, "SHA2-512"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H60_D3"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x6

    const-string v3, "SHA2-512"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H60_D6"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v8, 0xc

    const-string v3, "SHA2-512"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHA2-512_W16_H60_D12"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x14

    const/4 v8, 0x2

    const-string v3, "SHAKE128"

    const/16 v4, 0x20

    const/16 v6, 0x43

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H20_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x4

    const-string v3, "SHAKE128"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H20_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x28

    const/4 v8, 0x2

    const-string v3, "SHAKE128"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H40_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x4

    const-string v3, "SHAKE128"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H40_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v8, 0x8

    const-string v3, "SHAKE128"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H40_D8"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x3c

    const/4 v8, 0x3

    const-string v3, "SHAKE128"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H60_D3"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x6

    const-string v3, "SHAKE128"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H60_D6"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v8, 0xc

    const-string v3, "SHAKE128"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE128_W16_H60_D12"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x14

    const/4 v8, 0x2

    const-string v3, "SHAKE256"

    const/16 v4, 0x40

    const/16 v6, 0x83

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE256_W16_H20_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x4

    const-string v3, "SHAKE256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE256_W16_H20_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x28

    const/4 v8, 0x2

    const-string v3, "SHAKE256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE256_W16_H40_D2"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x4

    const-string v3, "SHAKE256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE256_W16_H40_D4"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v8, 0x8

    const-string v3, "SHAKE256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE256_W16_H40_D8"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v7, 0x3c

    const/4 v8, 0x3

    const-string v3, "SHAKE256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE256_W16_H60_D3"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v8, 0x6

    const-string v3, "SHAKE256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMSSMT_SHAKE256_W16_H60_D6"

    invoke-static {v2, v1, v0}, Ltr;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 v8, 0xc

    const-string v3, "SHAKE256"

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H60_D12"

    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;IIIII)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p3, p4, p0, p0, v0}, Ltr;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p5, p0, v0}, Ld21;->f(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->a:Ljava/lang/String;

    return-object p0
.end method
