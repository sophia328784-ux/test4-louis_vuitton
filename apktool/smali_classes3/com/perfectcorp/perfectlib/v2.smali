.class public final synthetic Lcom/perfectcorp/perfectlib/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

.field public final synthetic d:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Ljava/lang/Throwable;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/v2;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/v2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/v2;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V
    .locals 0

    .line 10
    iput p3, p0, Lcom/perfectcorp/perfectlib/v2;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/v2;->d:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/v2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/v2;->b:I

    const-string v1, "PhotoMakeupInternal"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/v2;->d:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/v2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[clearAllEffects] failed"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[downloadAndApplySkus] failed"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[applySkus] failed"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[setIntensities] failed"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_5
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[setReshapeIntensities] failed"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_6
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[clearEffects] failed"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_7
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[applyEffectIds] failed"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_8
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_9
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
