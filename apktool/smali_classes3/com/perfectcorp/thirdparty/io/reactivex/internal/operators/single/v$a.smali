.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

.field public final synthetic c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Value supplied was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
