.class public final synthetic Lcom/perfectcorp/perfectlib/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/m0;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/m0;->b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/m0;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/m0;->d:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/m0;->a:I

    const-string v1, "[downloadAndApplySkus] mapping SKUs failed. vtoSettings="

    const-string v2, "[downloadAndApplySkus] find product GUIDs failed. copiedVtoSettings="

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/m0;->d:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/m0;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/m0;->b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast p1, Ljava/lang/Throwable;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/q0;

    const/4 v0, 0x0

    invoke-direct {p0, v3, p1, v0}, Lcom/perfectcorp/perfectlib/q0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Ljava/lang/Throwable;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/q0;

    const/4 v0, 0x3

    invoke-direct {p0, v3, p1, v0}, Lcom/perfectcorp/perfectlib/q0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Ljava/lang/Throwable;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/q0;

    const/4 v0, 0x1

    invoke-direct {p0, v3, p1, v0}, Lcom/perfectcorp/perfectlib/q0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Ljava/lang/Throwable;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/q0;

    const/4 v0, 0x2

    invoke-direct {p0, v3, p1, v0}, Lcom/perfectcorp/perfectlib/q0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Ljava/lang/Throwable;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
