.class public final synthetic Lcom/perfectcorp/perfectlib/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/k2;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/k2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/k2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/k2;->a:I

    const-string v2, "[applyLookByGuid] Look applied. lookGuid="

    const-string v3, "[applyLookByGuid] onFailure. lookGuid="

    const-string v4, "[applyLookByGuid] task canceled. lookGuid="

    const-string v5, "[downloadAndApplyLookInternal] Look applied. lookGuid="

    const-string v6, "[downloadAndApplyLookInternal] onFailure. lookGuid="

    const-string v7, "[downloadAndApplyLookInternal] task canceled. lookGuid="

    const-string v8, "[applyLookByGuid] Look applied (mapping). lookGuid="

    const-string v9, "[applyLookByGuid] onFailure (mapping). lookGuid="

    const-string v10, "[applyLookByGuid] task canceled (mapping). lookGuid="

    const/4 v11, 0x0

    const-string v12, "MakeupCamInternal"

    const/4 v13, 0x3

    const-string v14, "PhotoMakeupInternal"

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/k2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/k2;->b:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_1

    const-string v2, "[downloadAndApplyLookInternal] task canceled (mapping). lookGuid="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string v2, "[downloadAndApplyLookInternal] onFailure (mapping). lookGuid="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v2, "[downloadAndApplyLookInternal] Look applied (mapping). lookGuid="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_3

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v11}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_5

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_5
    return-void

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v11}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v11}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_7

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_7
    return-void

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v11}, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
