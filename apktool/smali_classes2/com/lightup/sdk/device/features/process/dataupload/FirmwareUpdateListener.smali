.class public abstract Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nope"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V
.end method

.method public abstract onLinkBackUp()V
.end method

.method public abstract onLinkBroken()V
.end method

.method public final onProgress(D)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nope"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onProgress(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;)V
.end method
