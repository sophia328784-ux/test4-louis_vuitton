.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TK;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->e:I

    iput-boolean p5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 6

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;

    iget v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->e:I

    iget-boolean v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->f:Z

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;IZ)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
