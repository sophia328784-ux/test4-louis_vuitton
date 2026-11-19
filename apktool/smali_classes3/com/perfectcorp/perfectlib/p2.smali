.class public final synthetic Lcom/perfectcorp/perfectlib/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/p2;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/p2;->b:Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/p2;->a:I

    const-string v1, "MakeupCamInternal"

    const/4 v2, 0x3

    const-string v3, "[getEffectIds] success"

    const-string v4, "[getEffectIds] failed"

    const-string v5, "PhotoMakeupInternal"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/p2;->b:Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {v5, v4, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {v2, v5, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v1, v4, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v2, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
