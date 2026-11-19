.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;
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
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;->d:Z

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    instance-of v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    if-eqz v1, :cond_0

    invoke-interface {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;

    iget-boolean v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;->d:Z

    iget p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;->e:I

    invoke-direct {v1, p1, v0, v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;ZI)V

    invoke-interface {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
