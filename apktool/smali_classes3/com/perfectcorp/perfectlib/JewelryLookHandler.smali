.class final Lcom/perfectcorp/perfectlib/JewelryLookHandler;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    return-void
.end method

.method public static clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->JEWELRY_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->e(Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    new-instance v1, Ld20;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ld20;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/t;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    return-object v0
.end method
