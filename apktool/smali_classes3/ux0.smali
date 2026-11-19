.class public final synthetic Lux0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V
    .locals 0

    iput p2, p0, Lux0;->a:I

    iput-object p1, p0, Lux0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lux0;->a:I

    const-string v1, "SkuHandler"

    iget-object p0, p0, Lux0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    check-cast p1, Ljava/lang/Throwable;

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v0, :cond_0

    const-string p0, "[syncSkuListByEffect] canceled"

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "[syncSkuListByEffect] failed"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v0, :cond_1

    const-string p0, "[syncSkuList] canceled"

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string v0, "[syncSkuList] failed"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v0, :cond_2

    const-string p0, "[syncServerByEffect] canceled"

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const-string v0, "[syncServerByEffect] failed"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_2
    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v2, "[syncServer] canceled."

    if-eqz v0, :cond_3

    invoke-static {v1, v2, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    instance-of v4, v3, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v4, :cond_4

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    const-string v0, "[syncServer] failed."

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
