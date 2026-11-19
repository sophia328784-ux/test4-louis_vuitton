.class public final Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
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
.field public final synthetic a:Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1;->a:Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1;->a:Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->b()V

    return-void
.end method

.method public final onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1;->a:Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->c:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->b()V

    return-void
.end method

.method public final onProgress(D)V
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload$start$1;->a:Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;->a(Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;ZD)V

    return-void
.end method
