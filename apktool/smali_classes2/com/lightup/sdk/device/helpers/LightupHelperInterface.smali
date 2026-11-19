.class public interface abstract Lcom/lightup/sdk/device/helpers/LightupHelperInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH&J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0008\u0010\u001a\u001a\u00020\u0019H&J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001cH&J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u001e\u001a\u00020\u001fH&J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010#\u001a\u00020\u00082\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H&J\u0018\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u0010\t\u001a\u00020\nH&\u00a8\u0006*\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;",
        "",
        "isConnected",
        "",
        "isReady",
        "startAnimation",
        "Lcom/lightup/sdk/device/enums/CallStatus;",
        "animationId",
        "",
        "listener",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "stopAnimation",
        "getCurrentlyPlayingAnimation",
        "Lcom/lightup/sdk/animation/CreatorProject;",
        "openDevice",
        "openDeviceListener",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;",
        "updateDevice",
        "updateDeviceListener",
        "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;",
        "updateAnimations",
        "fetchFromCloud",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
        "setMode",
        "mode",
        "Lcom/lightup/sdk/device/enums/DeviceMode;",
        "getMode",
        "getDeviceAnimations",
        "",
        "setPowerModeOff",
        "getDeviceStatus",
        "Lcom/lightup/sdk/device/enums/DeviceStatus;",
        "getFirmwareVersion",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "getBoardVersion",
        "setTestFolder",
        "",
        "useTestFolder",
        "setWalkingModeConfig",
        "config",
        "Lcom/lightup/sdk/device/model/WalkingModeConfig;",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
.end method

.method public abstract getCurrentlyPlayingAnimation()Lcom/lightup/sdk/animation/CreatorProject;
.end method

.method public abstract getDeviceAnimations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;
.end method

.method public abstract getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
.end method

.method public abstract getMode()Lcom/lightup/sdk/device/enums/DeviceMode;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract openDevice(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
.end method

.method public abstract setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract setTestFolder(Z)V
.end method

.method public abstract setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract updateAnimations(ZLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract updateDevice(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method
