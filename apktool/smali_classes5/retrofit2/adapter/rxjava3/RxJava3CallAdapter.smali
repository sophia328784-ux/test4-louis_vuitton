.class final Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;ZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->a:Ljava/lang/reflect/Type;

    iput-boolean p2, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->b:Z

    iput-boolean p3, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->c:Z

    iput-boolean p4, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->d:Z

    iput-boolean p5, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->e:Z

    iput-boolean p6, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->f:Z

    iput-boolean p7, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->g:Z

    iput-boolean p8, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->a:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final b(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lretrofit2/adapter/rxjava3/CallEnqueueObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava3/CallEnqueueObservable;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava3/CallExecuteObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava3/CallExecuteObservable;-><init>(Lretrofit2/Call;)V

    :goto_0
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->c:Z

    if-eqz p1, :cond_1

    new-instance p1, Lretrofit2/adapter/rxjava3/ResultObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava3/ResultObservable;-><init>(Lio/reactivex/rxjava3/core/Observable;)V

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->d:Z

    if-eqz p1, :cond_2

    new-instance p1, Lretrofit2/adapter/rxjava3/BodyObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava3/BodyObservable;-><init>(Lio/reactivex/rxjava3/core/Observable;)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->e:Z

    if-eqz p1, :cond_3

    sget-object p0, Lio/reactivex/rxjava3/core/BackpressureStrategy;->MISSING:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->toFlowable(Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0

    :cond_3
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->f:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->singleOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0

    :cond_4
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->g:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->singleElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0

    :cond_5
    iget-boolean p0, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->h:Z

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->ignoreElements()Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method
