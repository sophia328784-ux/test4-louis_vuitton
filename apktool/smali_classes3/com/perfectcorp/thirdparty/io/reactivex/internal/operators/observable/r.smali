.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Completable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->d:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-direct {v0, p0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V

    return-object v0
.end method

.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->d:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/a;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
