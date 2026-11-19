.class public Lcom/linkplay/tvs/TvsProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clientID:Ljava/lang/String;

.field private dsn:Ljava/lang/String;

.field private productID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/tvs/TvsProfile;->clientID:Ljava/lang/String;

    return-object p0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/tvs/TvsProfile;->dsn:Ljava/lang/String;

    return-object p0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/tvs/TvsProfile;->productID:Ljava/lang/String;

    return-object p0
.end method

.method public setClientID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/tvs/TvsProfile;->clientID:Ljava/lang/String;

    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/tvs/TvsProfile;->dsn:Ljava/lang/String;

    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/tvs/TvsProfile;->productID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TvsProfile{productID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/tvs/TvsProfile;->productID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dsn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/tvs/TvsProfile;->dsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', clientID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linkplay/tvs/TvsProfile;->clientID:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
