.class public final synthetic Lcom/perfectcorp/perfectlib/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/t1;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/t1;->b:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/t1;->a:I

    const-string v2, "[clearEffects] success"

    const-string v3, "[clearEffects] failed"

    const-string v4, "[setReshapeIntensities] failed"

    const-string v5, "[setReshapeIntensities] task canceled."

    const-string v6, "[clearAllMakeupEffects] success"

    const-string v7, "[clearAllMakeupEffects] failed"

    const-string v8, "[setIntensities] complete"

    const-string v9, "[setIntensities] failed"

    const-string v10, "[setIntensities] task canceled."

    const-string v11, "[applyEffectIds] failed"

    const-string v12, "[applyEffectIds] task canceled."

    const-string v13, "[applySkus] succeed."

    const-string v14, "[applySkus] failed."

    const-string v15, "[applySkus] task canceled."

    move/from16 v16, v1

    const-string v1, "[downloadAndApplySkusInternal] Sku applied."

    move-object/from16 v17, v2

    const-string v2, "[clearAllEffects] success"

    move-object/from16 v18, v2

    const-string v2, "[clearAllEffects] failed"

    move-object/from16 v19, v2

    const-string v2, "PhotoMakeupInternal"

    move-object/from16 v20, v3

    const-string v3, "MakeupCamInternal"

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/t1;->b:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    packed-switch v16, :pswitch_data_0

    move-object/from16 v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    sget v4, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const/4 v4, 0x3

    invoke-static {v4, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v3}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v3, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v3, :cond_0

    invoke-static {v2, v15, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v14, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const/4 v4, 0x3

    invoke-static {v4, v2, v13}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v3, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v3, :cond_1

    invoke-static {v2, v12, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {v2, v11, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v3, "[applyEffectIds] success"

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v3, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v3, :cond_2

    invoke-static {v2, v10, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-static {v2, v9, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const/4 v4, 0x3

    invoke-static {v4, v2, v8}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {v2, v7, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_7
    const/4 v4, 0x3

    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {v4, v2, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v3, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v3, :cond_3

    invoke-static {v2, v5, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    move-object/from16 v4, v20

    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    move-object/from16 v4, v17

    const/4 v5, 0x3

    invoke-static {v5, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    move-object/from16 v4, v19

    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_c
    const/4 v5, 0x3

    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    move-object/from16 v4, v18

    invoke-static {v5, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_d
    move-object/from16 v4, v19

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_e
    move-object/from16 v4, v18

    const/4 v5, 0x3

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v5, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_f
    const/4 v2, 0x0

    const/4 v5, 0x3

    move-object/from16 v4, p1

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v5, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v3, v7, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_11
    const/4 v2, 0x0

    const/4 v5, 0x3

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v5, v3, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_4

    invoke-static {v3, v5, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_13
    move-object/from16 v4, v20

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_14
    move-object/from16 v4, v17

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_15
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_5

    invoke-static {v3, v10, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-static {v3, v9, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_5
    return-void

    :pswitch_16
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x3

    invoke-static {v4, v3, v8}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_17
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_6

    invoke-static {v3, v12, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-static {v3, v11, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :pswitch_18
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_7

    invoke-static {v3, v15, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-static {v3, v14, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_7
    return-void

    :pswitch_19
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x3

    invoke-static {v5, v3, v13}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1a
    move-object/from16 v4, v19

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1b
    move-object/from16 v4, v18

    const/4 v2, 0x0

    const/4 v5, 0x3

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v5, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
