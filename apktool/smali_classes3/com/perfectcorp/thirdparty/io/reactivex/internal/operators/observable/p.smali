.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->d:Z

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->e:I

    iput p5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-static {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aj;->b(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    iget v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->e:I

    iget v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->f:I

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-boolean v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;->d:Z

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;ZII)V

    invoke-interface {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
