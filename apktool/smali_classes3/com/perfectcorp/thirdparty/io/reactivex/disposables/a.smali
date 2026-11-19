.class final Lcom/perfectcorp/thirdparty/io/reactivex/disposables/a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/c<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    :try_start_0
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->a:Ljava/lang/Throwable;

    throw p0
.end method
