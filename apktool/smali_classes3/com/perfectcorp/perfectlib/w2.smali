.class public final synthetic Lcom/perfectcorp/perfectlib/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/w2;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/w2;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/w2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/w2;->a:I

    const-string v1, "[downloadAndApplySkusInternal] onFailure. vtoSettings="

    const-string v2, "[downloadAndApplySkusInternal] task canceled. vtoSettings="

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/w2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/w2;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Throwable;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v4, "PhotoMakeupInternal"

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v4, "MakeupCamInternal"

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
