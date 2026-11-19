.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public final f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
