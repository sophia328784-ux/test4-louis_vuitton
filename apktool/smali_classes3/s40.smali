.class public final synthetic Ls40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/ProgressCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ls40;->a:I

    iput-object p1, p0, Ls40;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 1

    iget v0, p0, Ls40;->a:I

    iget-object p0, p0, Ls40;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;->progress(D)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->progress(D)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;->downloadProgress(D)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->downloadProgress(D)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;->downloadProgress(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
