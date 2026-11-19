.class public final Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;",
        "",
        "Lcom/lightup/sdk/device/features/process/LightingUpload;",
        "upload1",
        "upload2",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
        "listener",
        "<init>",
        "(Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V",
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


# instance fields
.field public final a:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/lightup/sdk/device/enums/DataUploadError;

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->a:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1;

    invoke-direct {p3, p0}, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1;-><init>(Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;)V

    invoke-virtual {p1, p3}, Lcom/lightup/sdk/device/features/process/LightingUpload;->setDataUploadListener(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    new-instance p3, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$2;

    invoke-direct {p3, p0}, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$2;-><init>(Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;)V

    invoke-virtual {p2, p3}, Lcom/lightup/sdk/device/features/process/LightingUpload;->setDataUploadListener(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    invoke-virtual {p2}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    return-void
.end method

.method public static final a(Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;ZD)V
    .locals 2

    if-eqz p1, :cond_0

    iput-wide p2, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->d:D

    goto :goto_0

    :cond_0
    iput-wide p2, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->e:D

    :goto_0
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->a:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    iget-wide p2, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->d:D

    iget-wide v0, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->e:D

    add-double/2addr p2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v0

    invoke-interface {p1, p2, p3}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onProgress(D)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->c:Lcom/lightup/sdk/device/enums/DataUploadError;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->a:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onCompleted()V

    :cond_1
    return-void
.end method
