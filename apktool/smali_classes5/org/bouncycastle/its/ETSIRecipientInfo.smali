.class public Lorg/bouncycastle/its/ETSIRecipientInfo;
.super Ljava/lang/Object;


# instance fields
.field private final encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

.field private final recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-void
.end method


# virtual methods
.method public getContent(Lorg/bouncycastle/its/operator/ETSIDataDecryptor;)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->getChoice()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->getSymmetricCiphertext()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->getRecipientInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getEncKey()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;->getEncryptedDataEncryptionKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getV()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->getEncodedPoint()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getC()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getT()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->getCcmCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getContent()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->getNonce()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/its/operator/ETSIDataDecryptor;->decrypt([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Encrypted data is no AES 128 CCM"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEncryptedData()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-object p0
.end method

.method public getRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    return-object p0
.end method
