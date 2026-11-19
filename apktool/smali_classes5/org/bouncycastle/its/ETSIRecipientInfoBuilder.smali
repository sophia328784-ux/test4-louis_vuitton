.class public Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final keyWrapper:Lorg/bouncycastle/its/ETSIKeyWrapper;

.field private final recipientID:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ETSIKeyWrapper;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->keyWrapper:Lorg/bouncycastle/its/ETSIKeyWrapper;

    iput-object p2, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->recipientID:[B

    return-void
.end method


# virtual methods
.method public build([B)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->recipientID:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->setRecipientId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->keyWrapper:Lorg/bouncycastle/its/ETSIKeyWrapper;

    invoke-interface {p0, p1}, Lorg/bouncycastle/its/ETSIKeyWrapper;->wrap([B)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->setEncKey(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->createPKRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->certRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lr81;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
