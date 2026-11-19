.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;->c:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d$a;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;->c:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void
.end method
