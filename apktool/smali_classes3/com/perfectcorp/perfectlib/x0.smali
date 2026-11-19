.class public final synthetic Lcom/perfectcorp/perfectlib/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/x0;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/x0;->b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/x0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/x0;->a:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/x0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/x0;->b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "[getEffectIds] task canceled"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "[getEffectIds] failed"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[getEffectIds] complete"

    const/4 v2, 0x3

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
