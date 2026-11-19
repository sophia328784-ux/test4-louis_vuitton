.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m$a;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method
