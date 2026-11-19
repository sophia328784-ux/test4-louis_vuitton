.class public final synthetic Lcom/perfectcorp/perfectlib/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Throwable;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/v3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/v3;->c:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/v3;->d:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/v3;->b:I

    const-string v1, "PhotoMakeupInternal"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/v3;->d:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/v3;->c:Ljava/lang/Throwable;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[downloadAndApplyLook] failed"

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[applyLookGuid] failed"

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
