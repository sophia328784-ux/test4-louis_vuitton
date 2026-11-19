.class public Lcom/linkplay/core/device/LPDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceAlarm:Lcom/linkplay/alarm/LPDeviceAlarm;

.field private deviceInfo:Lcom/linkplay/core/model/LPDeviceInfo;

.field private devicePreset:Lcom/linkplay/preset/LPDevicePreset;

.field private deviceSettings:Lcom/linkplay/core/device/LPDeviceSettings;

.field private deviceSpotifySettings:Lcom/linkplay/core/device/LPDeviceSpotifySettings;

.field private deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

.field private deviceStreamServices:Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;

.field private deviceTimer:Lcom/linkplay/timer/LPDeviceTimer;

.field private ip:Ljava/lang/String;

.field private isCheckDevice:Z

.field private mediaInfo:Lcom/linkplay/mediainfo/LPMediaInfo;

.field private player:Lcom/linkplay/core/device/ILPDevicePlayer;

.field private upnpUUID:Ljava/lang/String;

.field private viaHTTP:Lcom/linkplay/core/device/LPPassthroughViaHTTP;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->upnpUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->ip:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/device/LPDevice;->isCheckDevice:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->player:Lcom/linkplay/core/device/ILPDevicePlayer;

    new-instance v1, Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-direct {v1}, Lcom/linkplay/core/model/LPDeviceStatus;-><init>()V

    iput-object v1, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    new-instance v1, Lcom/linkplay/core/model/LPDeviceInfo;

    invoke-direct {v1}, Lcom/linkplay/core/model/LPDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/linkplay/core/device/LPDevice;->deviceInfo:Lcom/linkplay/core/model/LPDeviceInfo;

    new-instance v1, Lcom/linkplay/mediainfo/LPMediaInfo;

    invoke-direct {v1}, Lcom/linkplay/mediainfo/LPMediaInfo;-><init>()V

    iput-object v1, p0, Lcom/linkplay/core/device/LPDevice;->mediaInfo:Lcom/linkplay/mediainfo/LPMediaInfo;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->devicePreset:Lcom/linkplay/preset/LPDevicePreset;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceAlarm:Lcom/linkplay/alarm/LPDeviceAlarm;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceTimer:Lcom/linkplay/timer/LPDeviceTimer;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSettings:Lcom/linkplay/core/device/LPDeviceSettings;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSpotifySettings:Lcom/linkplay/core/device/LPDeviceSpotifySettings;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->viaHTTP:Lcom/linkplay/core/device/LPPassthroughViaHTTP;

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStreamServices:Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;

    return-void
.end method


# virtual methods
.method public getDeviceAlarm()Lcom/linkplay/alarm/LPDeviceAlarm;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceAlarm:Lcom/linkplay/alarm/LPDeviceAlarm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/alarm/LPDeviceAlarm;

    invoke-direct {v0, p0}, Lcom/linkplay/alarm/LPDeviceAlarm;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceAlarm:Lcom/linkplay/alarm/LPDeviceAlarm;

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceAlarm:Lcom/linkplay/alarm/LPDeviceAlarm;

    return-object p0
.end method

.method public getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceInfo:Lcom/linkplay/core/model/LPDeviceInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/model/LPDeviceInfo;

    invoke-direct {v0}, Lcom/linkplay/core/model/LPDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceInfo:Lcom/linkplay/core/model/LPDeviceInfo;

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceInfo:Lcom/linkplay/core/model/LPDeviceInfo;

    return-object p0
.end method

.method public getDevicePreset()Lcom/linkplay/preset/LPDevicePreset;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->devicePreset:Lcom/linkplay/preset/LPDevicePreset;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/preset/LPDevicePreset;

    invoke-direct {v0, p0}, Lcom/linkplay/preset/LPDevicePreset;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->devicePreset:Lcom/linkplay/preset/LPDevicePreset;

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->devicePreset:Lcom/linkplay/preset/LPDevicePreset;

    return-object p0
.end method

.method public getDeviceSettings()Lcom/linkplay/core/device/LPDeviceSettings;
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-direct {v0}, Lcom/linkplay/core/model/LPDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSettings:Lcom/linkplay/core/device/LPDeviceSettings;

    if-nez v0, :cond_1

    new-instance v0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/linkplay/core/device/LPDeviceSettingsImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSettings:Lcom/linkplay/core/device/LPDeviceSettings;

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSettings:Lcom/linkplay/core/device/LPDeviceSettings;

    return-object p0
.end method

.method public getDeviceSpotifySettings()Lcom/linkplay/core/device/LPDeviceSpotifySettings;
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-direct {v0}, Lcom/linkplay/core/model/LPDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSpotifySettings:Lcom/linkplay/core/device/LPDeviceSpotifySettings;

    if-nez v0, :cond_1

    new-instance v0, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSpotifySettings:Lcom/linkplay/core/device/LPDeviceSpotifySettings;

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceSpotifySettings:Lcom/linkplay/core/device/LPDeviceSpotifySettings;

    return-object p0
.end method

.method public getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-direct {v0}, Lcom/linkplay/core/model/LPDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    return-object p0
.end method

.method public getDeviceStreamServices()Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStreamServices:Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;

    return-object p0
.end method

.method public getDeviceTimer()Lcom/linkplay/timer/LPDeviceTimer;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceTimer:Lcom/linkplay/timer/LPDeviceTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/timer/LPDeviceTimer;

    invoke-direct {v0, p0}, Lcom/linkplay/timer/LPDeviceTimer;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceTimer:Lcom/linkplay/timer/LPDeviceTimer;

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceTimer:Lcom/linkplay/timer/LPDeviceTimer;

    return-object p0
.end method

.method public getIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->mediaInfo:Lcom/linkplay/mediainfo/LPMediaInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/mediainfo/LPMediaInfo;

    invoke-direct {v0}, Lcom/linkplay/mediainfo/LPMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->mediaInfo:Lcom/linkplay/mediainfo/LPMediaInfo;

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->mediaInfo:Lcom/linkplay/mediainfo/LPMediaInfo;

    return-object p0
.end method

.method public getPassthroughViaHTTP()Lcom/linkplay/core/device/LPPassthroughViaHTTP;
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-direct {v0}, Lcom/linkplay/core/model/LPDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->viaHTTP:Lcom/linkplay/core/device/LPPassthroughViaHTTP;

    if-nez v0, :cond_1

    new-instance v0, Lcom/linkplay/core/device/LPPassthroughViaHTTPImpl;

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/linkplay/core/device/LPPassthroughViaHTTPImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->viaHTTP:Lcom/linkplay/core/device/LPPassthroughViaHTTP;

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->viaHTTP:Lcom/linkplay/core/device/LPPassthroughViaHTTP;

    return-object p0
.end method

.method public getPlayer()Lcom/linkplay/core/device/ILPDevicePlayer;
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-direct {v0}, Lcom/linkplay/core/model/LPDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/device/LPDevice;->player:Lcom/linkplay/core/device/ILPDevicePlayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/linkplay/core/device/LPDevicePlayerImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linkplay/core/device/LPDevice;->player:Lcom/linkplay/core/device/ILPDevicePlayer;

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->player:Lcom/linkplay/core/device/ILPDevicePlayer;

    return-object p0
.end method

.method public getUpnpUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->upnpUUID:Ljava/lang/String;

    return-object p0
.end method

.method public isCheckDevice()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/device/LPDevice;->isCheckDevice:Z

    return p0
.end method

.method public setCheckDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/core/device/LPDevice;->isCheckDevice:Z

    return-void
.end method

.method public setDeviceStreamServices(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevice;->deviceStreamServices:Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevice;->ip:Ljava/lang/String;

    return-void
.end method

.method public setUpnpUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevice;->upnpUUID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevice;->deviceStatus:Lcom/linkplay/core/model/LPDeviceStatus;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
