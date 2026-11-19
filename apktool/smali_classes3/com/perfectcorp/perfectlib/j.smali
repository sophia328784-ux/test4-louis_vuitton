.class public final synthetic Lcom/perfectcorp/perfectlib/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/j;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/j;->b:Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/j;->c:Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/j;->a:I

    const-string v1, "[applySkus] complete"

    const-string v2, "[applySkus] failed"

    const-string v3, "[applySkus] task canceled"

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/j;->c:Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/j;->b:Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0, v3, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v2, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v4, p0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v5, p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0, v3, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v2, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v4, p0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v5, p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "[applyEffectIds] task canceled"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const-string v0, "[applyEffectIds] failed"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[applyEffectIds] complete"

    invoke-static {v4, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v5, p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "[clearAllEffects] task canceled"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    const-string v0, "[clearAllEffects] failed"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_6
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[clearAllEffects] complete"

    invoke-static {v4, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v5, p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
