.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V

    return-void
.end method
