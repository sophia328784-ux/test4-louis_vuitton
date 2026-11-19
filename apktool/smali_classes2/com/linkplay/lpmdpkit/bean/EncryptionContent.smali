.class public Lcom/linkplay/lpmdpkit/bean/EncryptionContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alias:Ljava/lang/String;

.field private encryption:[B

.field private iv:[B


# direct methods
.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/EncryptionContent;->encryption:[B

    iput-object p2, p0, Lcom/linkplay/lpmdpkit/bean/EncryptionContent;->iv:[B

    iput-object p3, p0, Lcom/linkplay/lpmdpkit/bean/EncryptionContent;->alias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/EncryptionContent;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public getEncryption()[B
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/EncryptionContent;->encryption:[B

    return-object p0
.end method

.method public getIv()[B
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/EncryptionContent;->iv:[B

    return-object p0
.end method
