.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;
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

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TU;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;->e:I

    const/16 p1, 0x8

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-static {v0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aj;->b(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->a:I

    iget v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;->d:I

    iget p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;->e:I

    if-ne p0, v2, :cond_1

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    iput-object v1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput v3, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->e:I

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;

    iput-object v1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void

    :cond_1
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;

    sget v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->c:I

    if-ne p0, v4, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v2, p1, v1, v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;IZ)V

    invoke-interface {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
