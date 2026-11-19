.class public final synthetic Lcom/perfectcorp/perfectlib/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/f3;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/f3;->b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/f3;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/f3;->d:Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/f3;->a:I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/f3;->d:Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/f3;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/f3;->b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[downloadAndApplyLook] task canceled. lookGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[downloadAndApplyLook] failed. lookGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[downloadAndApplyLook] complete. lookGuid="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v2, p0}, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[applyLookGuid] task canceled. lookGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[applyLookGuid] failed. lookGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[applyLookGuid] complete. lookGuid="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v2, p0}, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
