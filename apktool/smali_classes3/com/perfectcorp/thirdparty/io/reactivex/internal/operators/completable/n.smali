.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public final f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public final g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public final h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
            ">;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    iput-object p7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void
.end method
