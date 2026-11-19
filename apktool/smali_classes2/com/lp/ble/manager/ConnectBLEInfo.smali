.class public Lcom/lp/ble/manager/ConnectBLEInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field appIP:Ljava/lang/String;

.field auth:Ljava/lang/String;

.field bOtherNetwork:Z

.field encry:Ljava/lang/String;

.field identity:Ljava/lang/String;

.field password:Ljava/lang/String;

.field sessionId:Ljava/lang/String;

.field ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    iput-object v0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    iput-object v0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->appIP:Ljava/lang/String;

    iput-object v0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppIP()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->appIP:Ljava/lang/String;

    return-object p0
.end method

.method public getAuth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    return-object p0
.end method

.method public getEncry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->identity:Ljava/lang/String;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public isbOtherNetwork()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    return p0
.end method

.method public setAppIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->appIP:Ljava/lang/String;

    return-void
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    return-void
.end method

.method public setEncry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->identity:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setbOtherNetwork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    return-void
.end method
