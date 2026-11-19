.class public final synthetic Lcom/perfectcorp/perfectlib/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

.field public final synthetic d:Ljava/lang/Throwable;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/d3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/d3;->c:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/d3;->d:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/d3;->e:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/d3;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/d3;->e:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/d3;->d:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/d3;->c:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[apply] failed"

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[clearAllEffects] failed"

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[setIntensities] failed"

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[clearEffects] failed"

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[applyEffectIds] failed"

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
