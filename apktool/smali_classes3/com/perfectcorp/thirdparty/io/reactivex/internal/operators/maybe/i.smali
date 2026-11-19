.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public final g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public final h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
            ">;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V

    return-void
.end method
