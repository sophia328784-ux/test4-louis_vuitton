.class public Lcom/lp/ble/manager/ApItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private auth:Ljava/lang/String;

.field private bssid:Ljava/lang/String;

.field private channel:I

.field private displayed_ssid:Ljava/lang/String;

.field private encry:Ljava/lang/String;

.field private extch:I

.field private identity:Ljava/lang/String;

.field private rssi:I

.field private signal:I

.field private ssid:Ljava/lang/String;

.field private wpa_auth:I

.field private wpa_cipher:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ApItem;->auth:Ljava/lang/String;

    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ApItem;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/ApItem;->channel:I

    return p0
.end method

.method public getDisplaySSID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ApItem;->displayed_ssid:Ljava/lang/String;

    return-object p0
.end method

.method public getEncry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ApItem;->encry:Ljava/lang/String;

    return-object p0
.end method

.method public getExtch()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/ApItem;->extch:I

    return p0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/ApItem;->identity:Ljava/lang/String;

    return-object p0
.end method

.method public getRssi()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/ApItem;->rssi:I

    return p0
.end method

.method public getSignal()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/ApItem;->signal:I

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/manager/ApItem;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lp/ble/manager/ApItem;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public getWpa_auth()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/ApItem;->wpa_auth:I

    return p0
.end method

.method public getWpa_cipher()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/ApItem;->wpa_cipher:I

    return p0
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ApItem;->auth:Ljava/lang/String;

    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ApItem;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/ApItem;->channel:I

    return-void
.end method

.method public setDisplaySSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ApItem;->displayed_ssid:Ljava/lang/String;

    return-void
.end method

.method public setEncry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ApItem;->encry:Ljava/lang/String;

    return-void
.end method

.method public setExtch(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/ApItem;->extch:I

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ApItem;->identity:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/ApItem;->rssi:I

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/ApItem;->signal:I

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/ApItem;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setWpa_auth(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/ApItem;->wpa_auth:I

    return-void
.end method

.method public setWpa_cipher(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/ApItem;->wpa_cipher:I

    return-void
.end method
