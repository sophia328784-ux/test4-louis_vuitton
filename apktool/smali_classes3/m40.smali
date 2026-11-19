.class public final synthetic Lm40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;I)V
    .locals 0

    iput p2, p0, Lm40;->a:I

    iput-object p1, p0, Lm40;->b:Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lm40;->a:I

    const-string v1, "JewelryLookHandler"

    const-string v2, "LookHandler"

    const-string v3, "NailLookHandler"

    const/4 v4, 0x3

    const-string v5, "[syncServer] success"

    const-string v6, "[syncServer] failed"

    const-string v7, "[syncServer] canceled."

    iget-object p0, p0, Lm40;->b:Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v0, :cond_0

    invoke-static {v3, v7, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v3, v6, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {v4, v3, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v0, :cond_1

    invoke-static {v2, v7, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {v2, v6, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    invoke-static {v4, v2, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_3
    check-cast p1, Ljava/util/List;

    invoke-static {v4, v1, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v0, :cond_2

    invoke-static {v1, v7, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-static {v1, v6, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
