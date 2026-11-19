.class public interface abstract Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lcom/lightup/sdk/device/model/device/Device;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDiscoveredDevice(Lcom/lightup/sdk/device/model/device/Device;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

.method public abstract onDiscoveryEnd(Z)V
.end method
