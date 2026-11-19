.class public final synthetic Lcom/perfectcorp/perfectlib/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic d:Ljava/lang/Throwable;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/f0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/f0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/f0;->d:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/f0;->e:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/f0;->b:I

    const-string v1, "[apply] failed"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/f0;->e:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/f0;->d:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/f0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[applyEffectIds] failed"

    invoke-static {p0, v0, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[clearAllEffects] failed"

    invoke-static {p0, v0, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
