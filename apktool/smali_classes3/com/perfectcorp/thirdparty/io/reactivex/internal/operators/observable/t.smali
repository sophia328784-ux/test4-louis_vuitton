.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
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
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t;->d:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
