.class public final synthetic Lcom/perfectcorp/perfectlib/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/t2;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/t2;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/t2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/t2;->a:I

    const-string v1, "MakeupCamInternal"

    const-string v2, "[downloadAndApplySkus] mapping SKUs failed. vtoSettings="

    const-string v3, "[downloadAndApplySkus] find product GUIDs failed. copiedVtoSettings="

    const-string v4, "PhotoMakeupInternal"

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/t2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/t2;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    check-cast p1, Ljava/lang/Throwable;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/v2;

    const/16 v0, 0x9

    invoke-direct {p0, v5, p1, v0}, Lcom/perfectcorp/perfectlib/v2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Ljava/lang/Throwable;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/v2;

    const/16 v0, 0xa

    invoke-direct {p0, v5, p1, v0}, Lcom/perfectcorp/perfectlib/v2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Ljava/lang/Throwable;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/v2;

    const/4 v0, 0x1

    invoke-direct {p0, v5, p1, v0}, Lcom/perfectcorp/perfectlib/v2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Ljava/lang/Throwable;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/v2;

    const/4 v0, 0x0

    invoke-direct {p0, v5, p1, v0}, Lcom/perfectcorp/perfectlib/v2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Ljava/lang/Throwable;I)V

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
