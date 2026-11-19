.class public interface abstract Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;
.implements Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;",
        "Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener<",
        "Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onProgress(IID)V
.end method

.method public abstract onUpdateError(Lcom/lightup/sdk/device/enums/UpdateError;)V
.end method
