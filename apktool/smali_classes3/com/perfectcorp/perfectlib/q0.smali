.class public final synthetic Lcom/perfectcorp/perfectlib/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

.field public final synthetic d:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Ljava/lang/Throwable;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/q0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/q0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/q0;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/q0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/q0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/q0;->d:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/q0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/q0;->d:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/q0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/q0;->d:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/q0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/q0;->d:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
