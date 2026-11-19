.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;
    }
.end annotation


# instance fields
.field public final b:[Lcom/perfectcorp/thirdparty/io/reactivex/b;


# direct methods
.method public constructor <init>([Lcom/perfectcorp/thirdparty/io/reactivex/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c;->b:[Lcom/perfectcorp/thirdparty/io/reactivex/b;

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c;->b:[Lcom/perfectcorp/thirdparty/io/reactivex/b;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/a;[Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->a()V

    return-void
.end method
